.class public Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;
.super Ljava/lang/Object;
.source "BleServerBroadcast.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BleServerBroadcast"


# instance fields
.field private mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 31
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 32
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public broadcast(Ljava/lang/String;Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingBeacon;Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;)V
    .locals 9
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "advertisingBeacon"    # Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingBeacon;
    .param p3, "advertisingCallback"    # Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 44
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_1

    .line 45
    if-eqz p3, :cond_0

    .line 46
    invoke-interface {p3}, Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;->notSupport()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v5, :cond_4

    .line 51
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    if-eqz v5, :cond_2

    .line 52
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v5, v6}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 61
    :cond_2
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    if-nez v5, :cond_3

    .line 62
    new-instance v5, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast$1;

    invoke-direct {v5, p0, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast$1;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;)V

    iput-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 82
    :cond_3
    new-instance v5, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    .line 83
    invoke-virtual {v5, v8}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v5

    .line 84
    invoke-virtual {v5, v7}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v5

    .line 85
    invoke-virtual {v5, v7}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v5

    .line 86
    invoke-virtual {v5, v8}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v5

    .line 87
    invoke-virtual {v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v4

    .line 89
    .local v4, "settings":Landroid/bluetooth/le/AdvertiseSettings;
    new-instance v5, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 90
    invoke-virtual {v5, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v5

    .line 91
    invoke-virtual {v5, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v5

    .line 92
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothScanner;->getServiceIdentifierFromParcelUuid(Ljava/util/UUID;)I

    move-result v6

    invoke-virtual {p2}, Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingBeacon;->toBytes()[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v5

    .line 93
    invoke-virtual {v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v2

    .line 94
    .local v2, "data":Landroid/bluetooth/le/AdvertiseData;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothManager;

    .line 95
    .local v3, "mBluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 96
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_5

    const/4 v1, 0x0

    .line 97
    .local v1, "bluetoothLeAdvertiser":Landroid/bluetooth/le/BluetoothLeAdvertiser;
    :goto_1
    if-eqz v1, :cond_0

    .line 98
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v1, v4, v2, v5}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    goto :goto_0

    .line 55
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothLeAdvertiser":Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .end local v2    # "data":Landroid/bluetooth/le/AdvertiseData;
    .end local v3    # "mBluetoothManager":Landroid/bluetooth/BluetoothManager;
    .end local v4    # "settings":Landroid/bluetooth/le/AdvertiseSettings;
    :cond_4
    if-eqz p3, :cond_0

    .line 56
    invoke-interface {p3}, Lcom/alibaba/doraemon/impl/bluetooth/advertise/AdvertisingCallback;->notSupport()V

    goto :goto_0

    .line 96
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v2    # "data":Landroid/bluetooth/le/AdvertiseData;
    .restart local v3    # "mBluetoothManager":Landroid/bluetooth/BluetoothManager;
    .restart local v4    # "settings":Landroid/bluetooth/le/AdvertiseSettings;
    :cond_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v1

    goto :goto_1
.end method

.method public stopBroadcast()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    goto :goto_0
.end method

.method public supportAdvertise()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleServerBroadcast;->mBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
