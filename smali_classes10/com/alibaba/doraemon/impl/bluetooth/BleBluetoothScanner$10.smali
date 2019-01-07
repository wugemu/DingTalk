.class Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$10;
.super Ljava/lang/Object;
.source "BleBluetoothScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->tryUnbindBeaconServiceIfNotWork()V
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
    .line 538
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$10;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 542
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$10;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$10;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const-string/jumbo v0, "BleBluetoothScanner"

    const-string/jumbo v1, "unbind beaconService"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/DoraemonLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$10;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$10;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->isBound(Lorg/altbeacon/beacon/BeaconConsumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$10;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$10;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-virtual {v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->unbind(Lorg/altbeacon/beacon/BeaconConsumer;)V

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$10;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$102(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;I)I

    .line 551
    :cond_2
    return-void
.end method
