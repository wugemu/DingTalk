.class Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$12;
.super Ljava/lang/Object;
.source "BleBluetoothScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->removeBluetoothScanListener(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Lorg/altbeacon/beacon/Region;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

.field final synthetic val$listener:Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;

.field final synthetic val$region:Lorg/altbeacon/beacon/Region;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Lorg/altbeacon/beacon/Region;Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$12;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$12;->val$region:Lorg/altbeacon/beacon/Region;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$12;->val$listener:Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 574
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$12;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$12;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 575
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;>;"
    if-eqz v0, :cond_0

    .line 576
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$12;->val$listener:Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 577
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$12;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$12;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_0
    return-void
.end method
