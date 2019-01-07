.class Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;
.super Landroid/os/Handler;
.source "BLEManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 847
    iput-object p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .line 848
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 849
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 853
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;->onBluetoothDeviceFound(Ljava/util/List;)V

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 857
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$200(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 858
    return-void
.end method
