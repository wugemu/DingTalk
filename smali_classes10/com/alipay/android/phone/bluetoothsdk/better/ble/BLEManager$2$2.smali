.class Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2$2;
.super Ljava/lang/Object;
.source "BLEManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;Landroid/bluetooth/BluetoothGatt;)V
    .locals 1
    .param p1, "this$1"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2$2;->this$1:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;

    iput-object p2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2$2;->this$1:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;

    iget-object v0, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$602(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;Z)Z

    .line 155
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2$2;->this$1:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;

    iget-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2$2;->this$1:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;

    iget-object v0, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1100(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->close(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;)V

    .line 156
    return-void
.end method
