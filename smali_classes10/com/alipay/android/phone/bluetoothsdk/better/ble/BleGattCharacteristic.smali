.class public Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;
.super Ljava/lang/Object;
.source "BleGattCharacteristic.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field public characteristicId:Ljava/lang/String;

.field public properties:Lcom/alipay/android/phone/bluetoothsdk/better/ble/CharacteristicProperty;

.field public serviceId:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
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

.method public static createCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;
    .locals 5
    .param p0, "bluetoothGattCharacteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;

    invoke-direct {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;-><init>()V

    .line 21
    .local v0, "characteristic":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;->characteristicId:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;->serviceId:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;->value:Ljava/lang/String;

    .line 24
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/CharacteristicProperty;

    invoke-direct {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/CharacteristicProperty;-><init>()V

    iput-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;->properties:Lcom/alipay/android/phone/bluetoothsdk/better/ble/CharacteristicProperty;

    .line 25
    iget-object v4, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;->properties:Lcom/alipay/android/phone/bluetoothsdk/better/ble/CharacteristicProperty;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v4, Lcom/alipay/android/phone/bluetoothsdk/better/ble/CharacteristicProperty;->read:Z

    .line 26
    iget-object v4, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;->properties:Lcom/alipay/android/phone/bluetoothsdk/better/ble/CharacteristicProperty;

    .line 27
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    :cond_0
    move v1, v2

    :goto_1
    iput-boolean v1, v4, Lcom/alipay/android/phone/bluetoothsdk/better/ble/CharacteristicProperty;->write:Z

    .line 29
    iget-object v4, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;->properties:Lcom/alipay/android/phone/bluetoothsdk/better/ble/CharacteristicProperty;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, v4, Lcom/alipay/android/phone/bluetoothsdk/better/ble/CharacteristicProperty;->indicate:Z

    .line 30
    iget-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;->properties:Lcom/alipay/android/phone/bluetoothsdk/better/ble/CharacteristicProperty;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    :goto_3
    iput-boolean v2, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/CharacteristicProperty;->notify:Z

    .line 31
    return-object v0

    :cond_1
    move v1, v3

    .line 25
    goto :goto_0

    :cond_2
    move v1, v3

    .line 28
    goto :goto_1

    :cond_3
    move v1, v3

    .line 29
    goto :goto_2

    :cond_4
    move v2, v3

    .line 30
    goto :goto_3
.end method

.method public static createCharacteristic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;
    .locals 1
    .param p0, "serviceId"    # Ljava/lang/String;
    .param p1, "characteristicId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;

    invoke-direct {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;-><init>()V

    .line 36
    .local v0, "characteristic":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;
    iput-object p0, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;->serviceId:Ljava/lang/String;

    .line 37
    iput-object p1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;->characteristicId:Ljava/lang/String;

    .line 38
    iput-object p2, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;->value:Ljava/lang/String;

    .line 39
    return-object v0
.end method
