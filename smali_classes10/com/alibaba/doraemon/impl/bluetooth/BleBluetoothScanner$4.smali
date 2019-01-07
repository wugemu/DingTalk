.class Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$4;
.super Ljava/lang/Object;
.source "BleBluetoothScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->postScan(Lorg/altbeacon/beacon/Region;)V
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
    .line 227
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$4;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$4;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$4;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$4;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/BeaconManager;->startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 232
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$4;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner$4;->val$region:Lorg/altbeacon/beacon/Region;

    invoke-virtual {v1, v2}, Lorg/altbeacon/beacon/BeaconManager;->startRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BleBluetoothScanner"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "post scan error, "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
