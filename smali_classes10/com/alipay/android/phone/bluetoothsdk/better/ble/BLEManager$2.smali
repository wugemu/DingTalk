.class Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BLEManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

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
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 232
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "receivedData":Ljava/lang/String;
    const-string/jumbo v1, "BLEManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCharacteristicChanged, characteristic data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;->onBluetoothCharacteristicValueChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 194
    const-string/jumbo v1, "BLEManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCharacteristicRead, status:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "receivedData":Ljava/lang/String;
    const-string/jumbo v1, "BLEManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCharacteristicRead, characteristic data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;->onBluetoothCharacteristicRead(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;->onBluetoothCharacteristicValueChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 8
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 207
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 208
    const-string/jumbo v2, "BLEManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onCharacteristicWrite, status:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1500(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 210
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1500(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)[B

    move-result-object v2

    array-length v2, v2

    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 211
    .local v1, "length":I
    new-array v0, v1, [B

    .line 212
    .local v0, "data":[B
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1500(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1402(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;I)I

    .line 214
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 215
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 219
    .end local v0    # "data":[B
    .end local v1    # "length":I
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-interface {v2, v3, v4, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;->onBluetoothCharacteristicWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1600(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1600(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logWriteBLETime(J)V

    .line 225
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2, v6, v7}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1602(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;J)J

    .line 227
    :cond_1
    return-void

    .line 217
    :cond_2
    const-string/jumbo v2, "BLEManager"

    const-string/jumbo v3, "\u6570\u636e\u5305\u53d1\u9001\u5b8c\u6210OnCharacteristicWrite"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 10
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 121
    const-string/jumbo v2, "BLEManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onConnectionStateChange,  status:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",newState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",closeDevice:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$600(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    if-ne p3, v6, :cond_5

    .line 123
    const-string/jumbo v2, "BLEManager"

    const-string/jumbo v3, "Connected to GATT server."

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$700(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$802(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;J)J

    .line 127
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v1

    .line 128
    .local v1, "discoverResult":Z
    const-string/jumbo v2, "BLEManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Attempting to start service discovery:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz v1, :cond_0

    .line 131
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2$1;

    invoke-direct {v3, p0, p1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2$1;-><init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;Landroid/bluetooth/BluetoothGatt;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->createConnectedBleDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    move-result-object v0

    .line 139
    .local v0, "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$700(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1100(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1100(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v0    # "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    .end local v1    # "discoverResult":Z
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1200(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_2

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1200(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logConnectBLETime(J)V

    .line 147
    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logConnectBLESucc()V

    .line 148
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1302(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;J)J

    .line 166
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eq p3, v6, :cond_4

    .line 167
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-ne p3, v6, :cond_8

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v3, v4, v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;->onBluetoothConnectionStateChange(Ljava/lang/String;Z)V

    .line 169
    :cond_4
    return-void

    .line 149
    :cond_5
    if-nez p3, :cond_3

    .line 150
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$600(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 151
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2$2;

    invoke-direct {v3, p0, p1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2$2;-><init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;Landroid/bluetooth/BluetoothGatt;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    :cond_6
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$700(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_7

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logKeepConnectTime(J)V

    .line 162
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2, v8, v9}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1302(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;J)J

    .line 164
    :cond_7
    invoke-static {}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logOnDisconnectBLE()V

    goto :goto_0

    .line 167
    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 258
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 259
    const-string/jumbo v0, "BLEManager"

    const-string/jumbo v1, "onDescriptorRead"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 242
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 243
    const-string/jumbo v0, "BLEManager"

    const-string/jumbo v1, "onDescriptorWrite"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    const-string/jumbo v0, "BLEManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDescriptorWrite, characteristic:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",properties:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 248
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;->onBluetoothDescriptorWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 8
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 173
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 174
    const-string/jumbo v1, "BLEManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onServicesDiscovered, status:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    if-eqz v0, :cond_0

    .line 177
    const-string/jumbo v1, "BLEManager"

    const-string/jumbo v2, "services is not null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$1000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2$3;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2$3;-><init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;Landroid/bluetooth/BluetoothGatt;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$800(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$800(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logDiscoverServiceTime(J)V

    .line 187
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v1, v6, v7}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$802(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;J)J

    .line 189
    :cond_1
    return-void
.end method
