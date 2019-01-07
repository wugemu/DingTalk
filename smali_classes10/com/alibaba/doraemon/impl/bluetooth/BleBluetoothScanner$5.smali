.class Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;
.super Ljava/lang/Object;
.source "BleBluetoothScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->stopFind(Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;Lorg/altbeacon/beacon/Region;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

.field final synthetic val$region:Lorg/altbeacon/beacon/Region;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Lorg/altbeacon/beacon/Region;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->val$region:Lorg/altbeacon/beacon/Region;

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
    .line 282
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/BeaconManager;->stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 287
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/BeaconManager;->stopRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$700(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V

    .line 295
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$800(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)V

    .line 297
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$5;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$900(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;Z)V

    .line 300
    :cond_2
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
