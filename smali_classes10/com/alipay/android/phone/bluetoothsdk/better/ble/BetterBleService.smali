.class public abstract Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;
.super Lint;
.source "BetterBleService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lint;-><init>()V

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
.method public abstract closeBluetoothAdapter()V
.end method

.method public abstract connectBluetoothDevice(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
.end method

.method public abstract disconnectBluetoothDevice(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
.end method

.method public abstract getBluetoothCharacteristics(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
.end method

.method public abstract getBluetoothDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBluetoothServices(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
.end method

.method public abstract getBluetoothState()I
.end method

.method public abstract getConnectedBluetoothDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getH5ActivityInstance()Ljava/lang/String;
.end method

.method public abstract isDiscovering()Z
.end method

.method public abstract isSupportBLE()Z
.end method

.method public abstract notifyCharacteristicValueChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 18
    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 23
    return-void
.end method

.method public abstract openBluetoothAdapter(Ljava/lang/String;Z)V
.end method

.method public abstract readData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
.end method

.method public abstract sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
.end method

.method public abstract setBetterBleListener(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;)V
.end method

.method public abstract startBluetoothDevicesDiscovery([Ljava/lang/String;ZI)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
.end method

.method public abstract stopBluetoothDevicesDiscovery()V
.end method
