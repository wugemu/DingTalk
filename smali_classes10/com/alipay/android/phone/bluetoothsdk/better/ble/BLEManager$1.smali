.class Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;
.super Ljava/lang/Object;
.source "BLEManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


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
    .line 72
    iput-object p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

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
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    const-string/jumbo v2, "BLEManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onLeScan, device:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$100(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logFirstScanTime(J)V

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 80
    invoke-static {p3}, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->parseFromBytes([B)Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;

    move-result-object v1

    .line 81
    .local v1, "scanData":Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;
    invoke-static {p1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->createBleDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    move-result-object v0

    .line 82
    .local v0, "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    iput p2, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->RSSI:I

    .line 83
    invoke-static {p3}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->getManufacturerData([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->manufacturerData:Ljava/lang/String;

    .line 84
    iget-object v2, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->manufacturerData:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->advertisData:Ljava/lang/String;

    .line 85
    invoke-virtual {v1}, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->advertisServiceUUIDs:Ljava/util/List;

    .line 86
    invoke-virtual {v1}, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->getServiceData()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->serviceData:Ljava/util/Map;

    .line 87
    const-string/jumbo v2, "BLEManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "manufacturerData:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->manufacturerData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",scanRecord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$200(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)I

    move-result v2

    if-nez v2, :cond_3

    .line 90
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 91
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 92
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;->onBluetoothDeviceFound(Ljava/util/List;)V

    .line 115
    .end local v0    # "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    .end local v1    # "scanData":Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;
    :cond_2
    :goto_0
    return-void

    .line 96
    .restart local v0    # "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    .restart local v1    # "scanData":Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;
    :cond_3
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v0    # "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    .end local v1    # "scanData":Lcom/alipay/android/phone/bluetoothsdk/ScanRecord;
    :cond_4
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$500(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    .line 102
    .restart local v0    # "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    iput p2, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->RSSI:I

    .line 103
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$200(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)I

    move-result v2

    if-nez v2, :cond_5

    .line 104
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 106
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;->onBluetoothDeviceFound(Ljava/util/List;)V

    goto :goto_0

    .line 110
    :cond_5
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;->this$0:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
