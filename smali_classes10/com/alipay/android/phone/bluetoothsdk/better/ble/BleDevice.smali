.class public Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
.super Ljava/lang/Object;
.source "BleDevice.java"


# instance fields
.field public RSSI:I

.field public advertisData:Ljava/lang/String;

.field public advertisServiceUUIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public deviceId:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public gatt:Landroid/bluetooth/BluetoothGatt;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation
.end field

.field public localName:Ljava/lang/String;

.field public manufacturerData:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public serviceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
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

.method public static createBleDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    .locals 2
    .param p0, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 40
    if-eqz p0, :cond_0

    .line 41
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    invoke-direct {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;-><init>()V

    .line 42
    .local v0, "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->deviceId:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->localName:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->deviceName:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->name:Ljava/lang/String;

    .line 46
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->manufacturerData:Ljava/lang/String;

    .line 47
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->advertisData:Ljava/lang/String;

    .line 50
    .end local v0    # "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createConnectedBleDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    .locals 1
    .param p0, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->createBleDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    move-result-object v0

    .line 55
    .local v0, "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    if-eqz v0, :cond_0

    .line 56
    iput-object p1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 58
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->deviceId:Ljava/lang/String;

    check-cast p1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
