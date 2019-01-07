.class public Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;
.super Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;
.source "BetterBleServiceImpl.java"


# static fields
.field private static final KEY_AUTO_RELEASE_BLE:Ljava/lang/String; = "BLE_AUTO_RELEASE_ON_EXIT_H5"

.field private static final TAG:Ljava/lang/String; = "BetterBleServiceImpl"


# instance fields
.field private bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

.field private h5ActivityInstance:Ljava/lang/String;

.field private pagePlugin:Lcom/alipay/android/phone/bluetoothsdk/H5BlePagePlugin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private registerH5PagePlugin()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->pagePlugin:Lcom/alipay/android/phone/bluetoothsdk/H5BlePagePlugin;

    if-nez v1, :cond_0

    .line 180
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/H5BlePagePlugin;

    invoke-direct {v1}, Lcom/alipay/android/phone/bluetoothsdk/H5BlePagePlugin;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->pagePlugin:Lcom/alipay/android/phone/bluetoothsdk/H5BlePagePlugin;

    .line 181
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 182
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/c;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 183
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getPluginManager()Liow;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->pagePlugin:Lcom/alipay/android/phone/bluetoothsdk/H5BlePagePlugin;

    invoke-interface {v1, v2}, Liow;->register(Liov;)Z

    .line 187
    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_0
    return-void
.end method

.method private unregisterH5PagePlugin()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->pagePlugin:Lcom/alipay/android/phone/bluetoothsdk/H5BlePagePlugin;

    if-eqz v1, :cond_0

    .line 191
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 192
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/c;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 193
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->getPluginManager()Liow;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->pagePlugin:Lcom/alipay/android/phone/bluetoothsdk/H5BlePagePlugin;

    invoke-interface {v1, v2}, Liow;->unregister(Liov;)Z

    .line 197
    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->pagePlugin:Lcom/alipay/android/phone/bluetoothsdk/H5BlePagePlugin;

    .line 198
    return-void
.end method


# virtual methods
.method public closeBluetoothAdapter()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->closeBluetoothAdapter()V

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->h5ActivityInstance:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->unregisterH5PagePlugin()V

    .line 68
    return-void
.end method

.method public connectBluetoothDevice(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->connect(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BLUETOOTHADAPTER_NOT_INITIALIZED:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnectBluetoothDevice(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->disconnectAndClose(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BLUETOOTHADAPTER_NOT_INITIALIZED:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBluetoothCharacteristics(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serviceUUID"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->getBluetoothCharacteristics(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BLUETOOTHADAPTER_NOT_INITIALIZED:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBluetoothDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->getBluetoothDevices()Ljava/util/List;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBluetoothServices(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->getBluetoothServices(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BLUETOOTHADAPTER_NOT_INITIALIZED:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBluetoothState()I
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->getBluetoothState()Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->ordinal()I

    move-result v0

    return v0
.end method

.method public getConnectedBluetoothDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->getConnectedBluetoothDevices()Ljava/util/List;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getH5ActivityInstance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->h5ActivityInstance:Ljava/lang/String;

    return-object v0
.end method

.method public isDiscovering()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->isDiscovering()Z

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportBLE()Z
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->isSupportBLE(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public notifyCharacteristicValueChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serviceUUID"    # Ljava/lang/String;
    .param p3, "characteristicUUID"    # Ljava/lang/String;
    .param p4, "descriptorUUID"    # Ljava/lang/String;
    .param p5, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->notifyCharacteristicValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BLUETOOTHADAPTER_NOT_INITIALIZED:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    const-string/jumbo v0, "BetterBleServiceImpl"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->d()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .line 29
    return-void
.end method

.method public onDestroy(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    const-string/jumbo v0, "BetterBleServiceImpl"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .line 35
    return-void
.end method

.method public openBluetoothAdapter(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "h5ActivityInstance"    # Ljava/lang/String;
    .param p2, "autoCloseOnPageOff"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->openBluetoothAdapter()V

    .line 55
    :goto_0
    iput-object p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->h5ActivityInstance:Ljava/lang/String;

    .line 59
    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->d()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->openBluetoothAdapter()V

    goto :goto_0
.end method

.method public readData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serviceUUID"    # Ljava/lang/String;
    .param p3, "characteristicUUID"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->readData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BLUETOOTHADAPTER_NOT_INITIALIZED:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serviceUUID"    # Ljava/lang/String;
    .param p3, "characteristicUUID"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BLUETOOTHADAPTER_NOT_INITIALIZED:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBetterBleListener(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;)V
    .locals 1
    .param p1, "betterBleListener"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->setBetterBleListener(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;)V

    .line 130
    :cond_0
    return-void
.end method

.method public startBluetoothDevicesDiscovery([Ljava/lang/String;ZI)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 4
    .param p1, "serviceUUIDs"    # [Ljava/lang/String;
    .param p2, "allowDuplicatesKey"    # Z
    .param p3, "interval"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->startBleScan([Ljava/lang/String;ZI)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BLUETOOTHADAPTER_NOT_INITIALIZED:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopBluetoothDevicesDiscovery()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;->bleManager:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    invoke-virtual {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->stopBleScan()V

    .line 91
    :cond_0
    return-void
.end method
