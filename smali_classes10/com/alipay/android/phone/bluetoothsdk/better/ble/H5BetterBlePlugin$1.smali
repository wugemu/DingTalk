.class Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$1;
.super Ljava/lang/Object;
.source "H5BetterBlePlugin.java"

# interfaces
.implements Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

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
.method public onBluetoothAdapterStateChange(ZZ)V
    .locals 6
    .param p1, "available"    # Z
    .param p2, "discovering"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    const-string/jumbo v3, "H5BetterBlePlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onBluetoothAdapterStateChange, enabled:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",discovering:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 105
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 106
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "available"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v3, "discovering"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v1

    .line 110
    .local v1, "h5Page":Liop;
    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v1}, Liop;->getBridge()Linx;

    move-result-object v3

    const-string/jumbo v4, "bluetoothAdapterStateChange"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 113
    :cond_0
    return-void
.end method

.method public onBluetoothCharacteristicRead(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serviceUUID"    # Ljava/lang/String;
    .param p3, "characteristicUUID"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    invoke-static {p2, p3, p4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;->createCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;

    move-result-object v0

    .line 176
    .local v0, "bleGattCharacteristic":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$100(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    move-result-object v2

    const/16 v3, 0x68

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 177
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$100(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    return-void
.end method

.method public onBluetoothCharacteristicValueChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serviceUUID"    # Ljava/lang/String;
    .param p3, "characteristicUUID"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    const-string/jumbo v3, "H5BetterBlePlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onBluetoothCharacteristicValueChange, address:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",serviceUUID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "characteristicUUID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 160
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 161
    .local v0, "dataObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "deviceId"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v3, "serviceId"

    invoke-virtual {v0, v3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v3, "characteristicId"

    invoke-virtual {v0, v3, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v1

    .line 167
    .local v1, "h5Page":Liop;
    if-eqz v1, :cond_0

    .line 168
    invoke-interface {v1}, Liop;->getBridge()Linx;

    move-result-object v3

    const-string/jumbo v4, "BLECharacteristicValueChange"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onBluetoothCharacteristicWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serviceUUID"    # Ljava/lang/String;
    .param p3, "characteristicUUID"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$100(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->sendEmptyMessage(I)Z

    .line 183
    return-void
.end method

.method public onBluetoothConnectionStateChange(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    const-string/jumbo v3, "H5BetterBlePlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onBluetoothConnectionStateChange, address:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",connected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v3, "H5BetterBlePlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "thread:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    if-eqz p2, :cond_1

    .line 139
    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$100(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->sendEmptyMessage(I)Z

    .line 143
    :goto_0
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 144
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 145
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "deviceId"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v3, "connected"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v1

    .line 149
    .local v1, "h5Page":Liop;
    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v1}, Liop;->getBridge()Linx;

    move-result-object v3

    const-string/jumbo v4, "BLEConnectionStateChanged"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 152
    :cond_0
    return-void

    .line 141
    .end local v0    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "h5Page":Liop;
    .end local v2    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$100(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onBluetoothDescriptorWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serviceUUID"    # Ljava/lang/String;
    .param p3, "characteristicUUID"    # Ljava/lang/String;
    .param p4, "descriptorUUID"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$100(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->sendEmptyMessage(I)Z

    .line 188
    return-void
.end method

.method public onBluetoothDeviceFound(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    .local p1, "bleDeviceList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;>;"
    if-eqz p1, :cond_0

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    .line 119
    .local v0, "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    const-string/jumbo v5, "H5BetterBlePlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onBluetoothDeviceFound, deviceId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    .end local v0    # "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "bleDeviceList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .restart local p1    # "bleDeviceList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;>;"
    :cond_1
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 125
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 126
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "devices"

    invoke-static {p1}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    invoke-static {v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->access$000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v2

    .line 129
    .local v2, "h5Page":Liop;
    if-eqz v2, :cond_2

    .line 130
    invoke-interface {v2}, Liop;->getBridge()Linx;

    move-result-object v4

    const-string/jumbo v5, "bluetoothDeviceFound"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v6}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 132
    :cond_2
    return-void
.end method
