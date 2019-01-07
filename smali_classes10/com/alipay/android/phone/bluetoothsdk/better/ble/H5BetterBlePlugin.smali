.class public Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;
.super Lipd;
.source "H5BetterBlePlugin.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;,
        Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;
    }
.end annotation


# static fields
.field private static final EVENT_BLE_CHARACTERISTIC_VALUE_CHANGE:Ljava/lang/String; = "BLECharacteristicValueChange"

.field private static final EVENT_BLE_CONNECTION_STATE_CHANGE:Ljava/lang/String; = "BLEConnectionStateChanged"

.field private static final EVENT_BLUETOOTH_ADAPTER_STATE_CHANGE:Ljava/lang/String; = "bluetoothAdapterStateChange"

.field private static final EVENT_BLUETOOTH_DEVICE_FOUND:Ljava/lang/String; = "bluetoothDeviceFound"

.field private static final FUNC_CLOSE_BLUETOOTH_ADAPTER:Ljava/lang/String; = "closeBluetoothAdapter"

.field private static final FUNC_CONNECT_BLE_DEVICE:Ljava/lang/String; = "connectBLEDevice"

.field private static final FUNC_DISCONNECT_BLE_DEVICE:Ljava/lang/String; = "disconnectBLEDevice"

.field private static final FUNC_GET_BLE_DEVICE_CHARACTERISTICS:Ljava/lang/String; = "getBLEDeviceCharacteristics"

.field private static final FUNC_GET_BLE_DEVICE_SERVICES:Ljava/lang/String; = "getBLEDeviceServices"

.field private static final FUNC_GET_BLUETOOTH_ADAPTER_STATE:Ljava/lang/String; = "getBluetoothAdapterState"

.field private static final FUNC_GET_BLUETOOTH_DEVICES:Ljava/lang/String; = "getBluetoothDevices"

.field private static final FUNC_GET_CONNECTED_BLUETOOTH_DEVICES:Ljava/lang/String; = "getConnectedBluetoothDevices"

.field private static final FUNC_NOTIFY_BLE_CHARACTERISTIC_VALUE_CHANGE:Ljava/lang/String; = "notifyBLECharacteristicValueChange"

.field private static final FUNC_OPEN_BLUETOOTH_ADAPTER:Ljava/lang/String; = "openBluetoothAdapter"

.field private static final FUNC_READ_BLE_CHARACTERISTIC_VALUE:Ljava/lang/String; = "readBLECharacteristicValue"

.field private static final FUNC_START_BLUETOOTH_DEVICES_DISCOVERY:Ljava/lang/String; = "startBluetoothDevicesDiscovery"

.field private static final FUNC_STOP_BLUETOOTH_DEVICES_DISCOVERY:Ljava/lang/String; = "stopBluetoothDevicesDiscovery"

.field private static final FUNC_WRITE_BLE_CHARACTERISTIC_VALUE:Ljava/lang/String; = "writeBLECharacteristicValue"

.field private static final KEY_ALLOWDUPLICATESKEY:Ljava/lang/String; = "allowDuplicatesKey"

.field private static final KEY_AUTO_CLOSE_ON_PAGE_OFF:Ljava/lang/String; = "autoClose"

.field private static final KEY_AVAILABLE:Ljava/lang/String; = "available"

.field private static final KEY_CHARACTERISTIC:Ljava/lang/String; = "characteristic"

.field private static final KEY_CHARACTERISTICS:Ljava/lang/String; = "characteristics"

.field private static final KEY_CHARACTERISTIC_ID:Ljava/lang/String; = "characteristicId"

.field private static final KEY_CONNECTED:Ljava/lang/String; = "connected"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_DESCRIPTOR_ID:Ljava/lang/String; = "descriptorId"

.field private static final KEY_DEVICES:Ljava/lang/String; = "devices"

.field private static final KEY_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final KEY_DISCOVERING:Ljava/lang/String; = "discovering"

.field private static final KEY_ERROR:Ljava/lang/String; = "error"

.field private static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field private static final KEY_INTERVAL:Ljava/lang/String; = "interval"

.field private static final KEY_IS_SUPPORT_BLE:Ljava/lang/String; = "isSupportBLE"

.field private static final KEY_SERVICES:Ljava/lang/String; = "services"

.field private static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceId"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final MSG_CALLBACK_CONNECT_BLE_DEVICE:I = 0x65

.field private static final MSG_CALLBACK_DISCONNECT_BLE_DEVICE:I = 0x66

.field private static final MSG_CALLBACK_NOTIFY_BLE_CHARACTERISTIC:I = 0x69

.field private static final MSG_CALLBACK_READ_BLE_CHARACTERISTIC:I = 0x68

.field private static final MSG_CALLBACK_WRITE_BLE_CHARACTERISTIC:I = 0x67

.field private static final MSG_DELAY_TIME:I = 0x2710

.field private static final MSG_DELAY_TIME_FOR_NOTIFY:I = 0x1388

.field private static final MSG_OPERATION_HANDLED:I = 0x0

.field private static final MSG_SHIFT:I = 0x64

.field private static final MSG_TIMEOUT_CONNECT_BLE_DEVICE:I = 0x1

.field private static final MSG_TIMEOUT_DISCONNECT_BLE_DEVICE:I = 0x2

.field private static final MSG_TIMEOUT_NOTIFY_BLE_CHARACTERISTIC:I = 0x5

.field private static final MSG_TIMEOUT_READ_BLE_CHARACTERISTIC:I = 0x4

.field private static final MSG_TIMEOUT_WRITE_BLE_CHARACTERISTIC:I = 0x3

.field private static final TAG:Ljava/lang/String; = "H5BetterBlePlugin"

.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private betterBleListener:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

.field private bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

.field private h5BridgeContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Liny;",
            ">;>;"
        }
    .end annotation
.end field

.field private h5Service:Lcom/alipay/mobile/h5container/service/H5Service;

.field private handler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

.field private operationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;",
            ">;"
        }
    .end annotation
.end field

.field private readCharacteristicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    const-string/jumbo v1, "openBluetoothAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    const-string/jumbo v1, "closeBluetoothAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    const-string/jumbo v1, "getBluetoothAdapterState"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    const-string/jumbo v1, "startBluetoothDevicesDiscovery"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    const-string/jumbo v1, "stopBluetoothDevicesDiscovery"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    const-string/jumbo v1, "getBluetoothDevices"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    const-string/jumbo v1, "getConnectedBluetoothDevices"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    const-string/jumbo v1, "connectBLEDevice"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    const-string/jumbo v1, "disconnectBLEDevice"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    const-string/jumbo v1, "writeBLECharacteristicValue"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    const-string/jumbo v1, "readBLECharacteristicValue"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    const-string/jumbo v1, "getBLEDeviceServices"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    const-string/jumbo v1, "getBLEDeviceCharacteristics"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    const-string/jumbo v1, "notifyBLECharacteristicValueChange"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lipd;-><init>()V

    .line 98
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;-><init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    .line 100
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$1;-><init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->betterBleListener:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Lcom/alipay/mobile/h5container/service/H5Service;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->h5Service:Lcom/alipay/mobile/h5container/service/H5Service;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->getActionFromMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->readCharacteristicList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->h5BridgeContextMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->removeFirstOperationFromList()V

    return-void
.end method

.method private addToOperationList(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->operationList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->operationList:Ljava/util/List;

    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;

    invoke-direct {v1, p1, p2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;-><init>(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->operationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->operationList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handleSynchronizedOperation(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;)V

    .line 275
    :cond_0
    return-void
.end method

.method private clearOperations()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 344
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->h5BridgeContextMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->h5BridgeContextMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->readCharacteristicList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->readCharacteristicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->operationList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->operationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 356
    :cond_3
    return-void
.end method

.method private closeBluetoothAdapter(Liny;)V
    .locals 2
    .param p1, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 332
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    invoke-virtual {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->closeBluetoothAdapter()V

    .line 334
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 335
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {p1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 339
    .end local v0    # "result":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->clearOperations()V

    .line 340
    invoke-static {}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logCloseBLEAdapter()V

    .line 341
    return-void

    .line 337
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendDefaultErrorBridgeResult(Liny;Z)V

    goto :goto_0
.end method

.method private connectBleDevice(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 437
    invoke-static {}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logConnectBLE()V

    .line 438
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v1, :cond_3

    .line 439
    const-string/jumbo v1, "deviceId"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    invoke-direct {p0, p3, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendParamLackingBridgeResult(Liny;Z)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    const-string/jumbo v2, "deviceId"

    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->connectBluetoothDevice(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    .line 444
    .local v0, "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    iget-boolean v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->syncReturn:Z

    if-nez v1, :cond_2

    .line 445
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handleH5Bridge(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 447
    :cond_2
    invoke-direct {p0, p3, v0, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendBridgeResult(Liny;Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;Z)V

    .line 448
    iget-boolean v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    if-nez v1, :cond_0

    .line 449
    invoke-virtual {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logConnectBLEErr(Ljava/lang/String;)V

    goto :goto_0

    .line 453
    .end local v0    # "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    :cond_3
    invoke-direct {p0, p3, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendDefaultErrorBridgeResult(Liny;Z)V

    goto :goto_0
.end method

.method private disconnectBleDevice(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 458
    invoke-static {}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logDisconnectBLE()V

    .line 459
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v1, :cond_2

    .line 460
    const-string/jumbo v1, "deviceId"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    invoke-direct {p0, p3, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendParamLackingBridgeResult(Liny;Z)V

    .line 473
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    const-string/jumbo v2, "deviceId"

    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->disconnectBluetoothDevice(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    .line 465
    .local v0, "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    iget-boolean v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->syncReturn:Z

    if-nez v1, :cond_1

    .line 466
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handleH5Bridge(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 468
    :cond_1
    invoke-direct {p0, p3, v0, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendBridgeResult(Liny;Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;Z)V

    goto :goto_0

    .line 471
    .end local v0    # "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    :cond_2
    invoke-direct {p0, p3, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendDefaultErrorBridgeResult(Liny;Z)V

    goto :goto_0
.end method

.method private getActionFromMessage(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, "action":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 652
    :goto_0
    return-object v0

    .line 637
    :pswitch_0
    const-string/jumbo v0, "connectBLEDevice"

    .line 638
    goto :goto_0

    .line 640
    :pswitch_1
    const-string/jumbo v0, "disconnectBLEDevice"

    .line 641
    goto :goto_0

    .line 643
    :pswitch_2
    const-string/jumbo v0, "writeBLECharacteristicValue"

    .line 644
    goto :goto_0

    .line 646
    :pswitch_3
    const-string/jumbo v0, "readBLECharacteristicValue"

    .line 647
    goto :goto_0

    .line 649
    :pswitch_4
    const-string/jumbo v0, "notifyBLECharacteristicValueChange"

    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getBleDeviceCharacteristics(Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 7
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 567
    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v3, :cond_1

    .line 568
    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    const-string/jumbo v4, "deviceId"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "serviceId"

    .line 569
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 568
    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->getBluetoothCharacteristics(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    .line 570
    .local v0, "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    iget-boolean v3, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    if-eqz v3, :cond_0

    .line 571
    iget-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 572
    .local v1, "characteristics":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;>;"
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 573
    .local v2, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "characteristics"

    invoke-static {v1}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-interface {p2, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 581
    .end local v0    # "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .end local v1    # "characteristics":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;>;"
    .end local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 576
    .restart local v0    # "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    :cond_0
    invoke-direct {p0, p2, v0, v6}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendBridgeResult(Liny;Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;Z)V

    goto :goto_0

    .line 579
    .end local v0    # "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    :cond_1
    invoke-direct {p0, p2, v6}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendDefaultErrorBridgeResult(Liny;Z)V

    goto :goto_0
.end method

.method private getBleDeviceServices(Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 6
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 551
    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v3, :cond_1

    .line 552
    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    const-string/jumbo v4, "deviceId"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->getBluetoothServices(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    .line 553
    .local v0, "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    iget-boolean v3, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    if-eqz v3, :cond_0

    .line 554
    iget-object v2, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 555
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattService;>;"
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 556
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "services"

    invoke-static {v2}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-interface {p2, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 564
    .end local v0    # "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .end local v1    # "result":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattService;>;"
    :goto_0
    return-void

    .line 559
    .restart local v0    # "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    :cond_0
    invoke-direct {p0, p2, v0, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendBridgeResult(Liny;Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;Z)V

    goto :goto_0

    .line 562
    .end local v0    # "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    :cond_1
    invoke-direct {p0, p2, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendDefaultErrorBridgeResult(Liny;Z)V

    goto :goto_0
.end method

.method private getBluetoothAdapterState(Liny;)V
    .locals 5
    .param p1, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v2, :cond_1

    .line 360
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 361
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "discovering"

    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    invoke-virtual {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->isDiscovering()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v2, "available"

    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    invoke-virtual {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->isSupportBLE()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    .line 363
    invoke-virtual {v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->getBluetoothState()I

    move-result v3

    sget-object v4, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->ON:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    invoke-virtual {v4}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 362
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-interface {p1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 368
    .end local v0    # "result":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendDefaultErrorBridgeResult(Liny;Z)V

    goto :goto_0
.end method

.method private getBluetoothDevices(Liny;)V
    .locals 4
    .param p1, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 411
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    invoke-virtual {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->getBluetoothDevices()Ljava/util/List;

    move-result-object v0

    .line 413
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;>;"
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 414
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    .line 415
    const-string/jumbo v2, "devices"

    invoke-static {v0}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_0
    invoke-interface {p1, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 421
    .end local v0    # "devices":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;>;"
    .end local v1    # "result":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 419
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendDefaultErrorBridgeResult(Liny;Z)V

    goto :goto_0
.end method

.method private getConnectedBluetoothDevices(Liny;)V
    .locals 4
    .param p1, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 424
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v2, :cond_1

    .line 425
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    invoke-virtual {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->getConnectedBluetoothDevices()Ljava/util/List;

    move-result-object v0

    .line 426
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;>;"
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 427
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    .line 428
    const-string/jumbo v2, "devices"

    invoke-static {v0}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_0
    invoke-interface {p1, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 434
    .end local v0    # "devices":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;>;"
    .end local v1    # "result":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 432
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendDefaultErrorBridgeResult(Liny;Z)V

    goto :goto_0
.end method

.method private getMessageWhatFromAction(Ljava/lang/String;)I
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "what":I
    const-string/jumbo v1, "connectBLEDevice"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    const/4 v0, 0x1

    .line 630
    :cond_0
    :goto_0
    return v0

    .line 621
    :cond_1
    const-string/jumbo v1, "disconnectBLEDevice"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 622
    const/4 v0, 0x2

    goto :goto_0

    .line 623
    :cond_2
    const-string/jumbo v1, "writeBLECharacteristicValue"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 624
    const/4 v0, 0x3

    goto :goto_0

    .line 625
    :cond_3
    const-string/jumbo v1, "readBLECharacteristicValue"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 626
    const/4 v0, 0x4

    goto :goto_0

    .line 627
    :cond_4
    const-string/jumbo v1, "notifyBLECharacteristicValueChange"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private varargs handleH5Bridge(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->getMessageWhatFromAction(Ljava/lang/String;)I

    move-result v2

    .line 585
    .local v2, "what":I
    const/4 v0, 0x0

    .line 586
    .local v0, "context":Liny;
    if-eqz p2, :cond_0

    .line 587
    array-length v3, p2

    if-lez v3, :cond_0

    .line 588
    const/4 v3, 0x0

    aget-object v0, p2, v3

    .end local v0    # "context":Liny;
    check-cast v0, Liny;

    .line 591
    .restart local v0    # "context":Liny;
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->setH5BridgeContext(Ljava/lang/String;Liny;)V

    .line 592
    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    invoke-virtual {v3, v2, v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 593
    .local v1, "message":Landroid/os/Message;
    const-string/jumbo v3, "notifyBLECharacteristicValueChange"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 594
    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private handleSynchronizedOperation(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;)V
    .locals 6
    .param p1, "h5Operation"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 287
    const-string/jumbo v3, "H5BetterBlePlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleEvent, event:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;->h5Event:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 5065
    iget-object v5, v5, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",context:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;->h5BridgeContext:Liny;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v2, p1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;->h5Event:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 290
    .local v2, "event":Lcom/alipay/mobile/h5container/api/H5Event;
    iget-object v1, p1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;->h5BridgeContext:Liny;

    .line 6065
    .local v1, "context":Liny;
    iget-object v0, v2, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 292
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "connectBLEDevice"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6121
    iget-object v3, v2, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 293
    invoke-direct {p0, v0, v3, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->connectBleDevice(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const-string/jumbo v3, "disconnectBLEDevice"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7121
    iget-object v3, v2, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 295
    invoke-direct {p0, v0, v3, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->disconnectBleDevice(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V

    goto :goto_0

    .line 296
    :cond_2
    const-string/jumbo v3, "writeBLECharacteristicValue"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8121
    iget-object v3, v2, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 297
    invoke-direct {p0, v0, v3, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->writeBleCharacteristicValue(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V

    goto :goto_0

    .line 298
    :cond_3
    const-string/jumbo v3, "readBLECharacteristicValue"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9121
    iget-object v3, v2, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 299
    invoke-direct {p0, v0, v3, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->readBleCharacteristicValue(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V

    goto :goto_0

    .line 300
    :cond_4
    const-string/jumbo v3, "notifyBLECharacteristicValueChange"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10121
    iget-object v3, v2, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 301
    invoke-direct {p0, v0, v3, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->notifyBleCharacteristicValueChange(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V

    goto :goto_0
.end method

.method private notifyBleCharacteristicValueChange(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 524
    invoke-static {}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logNotifyBLE()V

    .line 525
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 526
    const-string/jumbo v0, "deviceId"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "serviceId"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "characteristicId"

    .line 527
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 528
    :cond_0
    invoke-direct {p0, p3, v7}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendParamLackingBridgeResult(Liny;Z)V

    .line 548
    :cond_1
    :goto_0
    return-void

    .line 531
    :cond_2
    const/4 v5, 0x1

    .line 532
    .local v5, "enable":Z
    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 535
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    const-string/jumbo v1, "deviceId"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "serviceId"

    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "characteristicId"

    .line 536
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "descriptorId"

    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 535
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->notifyCharacteristicValueChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v6

    .line 537
    .local v6, "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    iget-boolean v0, v6, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->syncReturn:Z

    if-nez v0, :cond_4

    .line 538
    new-array v0, v7, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handleH5Bridge(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 540
    :cond_4
    invoke-direct {p0, p3, v6, v7}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendBridgeResult(Liny;Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;Z)V

    .line 541
    iget-boolean v0, v6, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    if-nez v0, :cond_1

    .line 542
    invoke-virtual {v6}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logNotifyBLEErr(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    .end local v5    # "enable":Z
    .end local v6    # "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    :cond_5
    invoke-direct {p0, p3, v7}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendDefaultErrorBridgeResult(Liny;Z)V

    goto :goto_0
.end method

.method private openBluetoothAdapter(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 306
    invoke-direct {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->clearOperations()V

    .line 307
    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v4, :cond_5

    .line 308
    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    invoke-virtual {v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->isSupportBLE()Z

    move-result v2

    .line 309
    .local v2, "isSupportBle":Z
    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    invoke-virtual {v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->getBluetoothState()I

    move-result v1

    .line 310
    .local v1, "bluetoothState":I
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 311
    .local v3, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "isSupportBLE"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v4, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->ON:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    invoke-virtual {v4}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->ordinal()I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 313
    const-string/jumbo v4, "error"

    sget-object v6, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CODE_ARRAY:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v3, v4, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v4, "errorMessage"

    sget-object v6, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->BLUETOOTH_STATE_STR:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v3, v4, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_0
    const/4 v0, 0x1

    .line 11121
    .local v0, "autoClose":Z
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 317
    const-string/jumbo v6, "autoClose"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12121
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 318
    const-string/jumbo v6, "autoClose"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    .line 320
    :cond_1
    if-eqz v2, :cond_2

    sget-object v4, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->ON:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    invoke-virtual {v4}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->ordinal()I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 321
    iget-object v6, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4, v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->openBluetoothAdapter(Ljava/lang/String;Z)V

    .line 323
    :cond_2
    invoke-interface {p2, v3}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 324
    sget-object v4, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->ON:Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;

    invoke-virtual {v4}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothState;->ordinal()I

    move-result v4

    if-ne v1, v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logBluetoothEnabled(Z)V

    .line 328
    .end local v0    # "autoClose":Z
    .end local v1    # "bluetoothState":I
    .end local v2    # "isSupportBle":Z
    .end local v3    # "result":Lcom/alibaba/fastjson/JSONObject;
    :goto_2
    invoke-static {}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logOpenBLEAdapter()V

    .line 329
    return-void

    .line 321
    .restart local v0    # "autoClose":Z
    .restart local v1    # "bluetoothState":I
    .restart local v2    # "isSupportBle":Z
    .restart local v3    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    const-string/jumbo v4, ""

    goto :goto_0

    :cond_4
    move v4, v5

    .line 324
    goto :goto_1

    .line 326
    .end local v0    # "autoClose":Z
    .end local v1    # "bluetoothState":I
    .end local v2    # "isSupportBle":Z
    .end local v3    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    invoke-direct {p0, p2, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendDefaultErrorBridgeResult(Liny;Z)V

    goto :goto_2
.end method

.method private readBleCharacteristicValue(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 501
    invoke-static {}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logReadDataBLE()V

    .line 502
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v1, :cond_4

    .line 503
    const-string/jumbo v1, "deviceId"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "serviceId"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "characteristicId"

    .line 504
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 505
    :cond_0
    invoke-direct {p0, p3, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendParamLackingBridgeResult(Liny;Z)V

    .line 521
    :cond_1
    :goto_0
    return-void

    .line 508
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    const-string/jumbo v2, "deviceId"

    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "serviceId"

    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "characteristicId"

    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->readData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    .line 509
    .local v0, "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    iget-boolean v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->syncReturn:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 510
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->readCharacteristicList:Ljava/util/List;

    iget-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    iget-object v2, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->obj:Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-direct {p0, p1, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handleH5Bridge(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 513
    :cond_3
    invoke-direct {p0, p3, v0, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendBridgeResult(Liny;Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;Z)V

    .line 514
    iget-boolean v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    if-nez v1, :cond_1

    .line 515
    invoke-virtual {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logReadBLEErr(Ljava/lang/String;)V

    goto :goto_0

    .line 519
    .end local v0    # "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    :cond_4
    invoke-direct {p0, p3, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendDefaultErrorBridgeResult(Liny;Z)V

    goto :goto_0
.end method

.method private removeFirstOperationFromList()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->operationList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->operationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->operationList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->operationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->operationList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handleSynchronizedOperation(Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$H5Operation;)V

    .line 284
    :cond_0
    return-void
.end method

.method private sendBridgeResult(Liny;Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;Z)V
    .locals 3
    .param p1, "context"    # Liny;
    .param p2, "bleResult"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .param p3, "inOperationList"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 656
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 657
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    iget-boolean v1, p2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    if-nez v1, :cond_0

    .line 658
    iget-object v1, p2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 659
    const-string/jumbo v1, "error"

    invoke-virtual {p2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string/jumbo v1, "errorMessage"

    invoke-virtual {p2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    :cond_0
    :goto_0
    invoke-interface {p1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 666
    if-eqz p3, :cond_1

    .line 667
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->sendEmptyMessage(I)Z

    .line 669
    :cond_1
    return-void

    .line 662
    :cond_2
    const-string/jumbo v1, "error"

    const-string/jumbo v2, "12"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private sendDefaultErrorBridgeResult(Liny;Z)V
    .locals 3
    .param p1, "context"    # Liny;
    .param p2, "inOperationList"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 682
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 683
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "error"

    const-string/jumbo v2, "12"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    invoke-interface {p1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 685
    if-eqz p2, :cond_0

    .line 686
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->sendEmptyMessage(I)Z

    .line 688
    :cond_0
    return-void
.end method

.method private sendParamLackingBridgeResult(Liny;Z)V
    .locals 5
    .param p1, "context"    # Liny;
    .param p2, "inOperationList"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 672
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 673
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "error"

    sget-object v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_PARAM_LACK:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string/jumbo v1, "errorMessage"

    sget-object v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_PARAM_LACK:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    invoke-interface {p1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 676
    if-eqz p2, :cond_0

    .line 677
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    invoke-virtual {v1, v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->sendEmptyMessage(I)Z

    .line 679
    :cond_0
    return-void
.end method

.method private setH5BridgeContext(Ljava/lang/String;Liny;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 601
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->h5BridgeContextMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v0, "h5BridgeContextList":Ljava/util/List;, "Ljava/util/List<Liny;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->h5BridgeContextMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :goto_0
    return-void

    .line 606
    .end local v0    # "h5BridgeContextList":Ljava/util/List;, "Ljava/util/List<Liny;>;"
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->h5BridgeContextMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 607
    .restart local v0    # "h5BridgeContextList":Ljava/util/List;, "Ljava/util/List<Liny;>;"
    if-eqz v0, :cond_1

    .line 608
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 610
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "h5BridgeContextList":Ljava/util/List;, "Ljava/util/List<Liny;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .restart local v0    # "h5BridgeContextList":Ljava/util/List;, "Ljava/util/List<Liny;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->h5BridgeContextMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private startBluetoothDevicesDiscovery(Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 9
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 371
    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v5, :cond_3

    .line 372
    const/4 v4, 0x0

    .line 373
    .local v4, "serviceUUIDs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 374
    .local v0, "allowDuplicatesKey":Z
    const/4 v1, 0x0

    .line 375
    .local v1, "interval":I
    if-eqz p1, :cond_2

    .line 376
    const-string/jumbo v5, "services"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    const-string/jumbo v5, "H5BetterBlePlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "services:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "services"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string/jumbo v5, "services"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lgxk;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 379
    .local v3, "serviceUUIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 380
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 381
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 384
    .end local v3    # "serviceUUIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v5, "allowDuplicatesKey"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 385
    const-string/jumbo v5, "allowDuplicatesKey"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 387
    :cond_1
    const-string/jumbo v5, "interval"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 388
    const-string/jumbo v5, "interval"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 391
    :cond_2
    iget-object v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    invoke-virtual {v5, v4, v0, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->startBluetoothDevicesDiscovery([Ljava/lang/String;ZI)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v2

    .line 392
    .local v2, "ret":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    invoke-direct {p0, p2, v2, v8}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendBridgeResult(Liny;Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;Z)V

    .line 396
    .end local v0    # "allowDuplicatesKey":Z
    .end local v1    # "interval":I
    .end local v2    # "ret":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .end local v4    # "serviceUUIDs":[Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logStartBLEScan()V

    .line 397
    return-void

    .line 394
    :cond_3
    invoke-direct {p0, p2, v8}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendDefaultErrorBridgeResult(Liny;Z)V

    goto :goto_0
.end method

.method private stopBluetoothDevicesDiscovery(Liny;)V
    .locals 2
    .param p1, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 400
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    invoke-virtual {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->stopBluetoothDevicesDiscovery()V

    .line 402
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 403
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {p1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 407
    .end local v0    # "result":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logStopBLEScan()V

    .line 408
    return-void

    .line 405
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendDefaultErrorBridgeResult(Liny;Z)V

    goto :goto_0
.end method

.method private writeBleCharacteristicValue(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 476
    invoke-static {}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logWriteDataBLE()V

    .line 477
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v1, :cond_4

    .line 478
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "H5BetterBlePlugin"

    const-string/jumbo v3, "writeBleCharacteristicValue"

    invoke-interface {v1, v2, v3}, Likq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string/jumbo v1, "deviceId"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "serviceId"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "characteristicId"

    .line 480
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "value"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 481
    :cond_0
    invoke-direct {p0, p3, v6}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendParamLackingBridgeResult(Liny;Z)V

    .line 498
    :cond_1
    :goto_0
    return-void

    .line 484
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    const-string/jumbo v2, "deviceId"

    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "serviceId"

    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "characteristicId"

    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "value"

    .line 485
    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 484
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    .line 486
    .local v0, "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    iget-boolean v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->syncReturn:Z

    if-nez v1, :cond_3

    .line 487
    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handleH5Bridge(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 489
    :cond_3
    invoke-direct {p0, p3, v0, v6}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendBridgeResult(Liny;Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;Z)V

    .line 490
    iget-boolean v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    if-nez v1, :cond_1

    .line 491
    invoke-virtual {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logWriteBLEErr(Ljava/lang/String;)V

    goto :goto_0

    .line 495
    .end local v0    # "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    :cond_4
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "H5BetterBlePlugin"

    const-string/jumbo v3, "bleService is null"

    invoke-interface {v1, v2, v3}, Likq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-direct {p0, p3, v6}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->sendDefaultErrorBridgeResult(Liny;Z)V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 242
    const-string/jumbo v1, "H5BetterBlePlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleEvent, event:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1065
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 244
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "openBluetoothAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->openBluetoothAdapter(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    .line 265
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 246
    :cond_0
    const-string/jumbo v1, "closeBluetoothAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-direct {p0, p2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->closeBluetoothAdapter(Liny;)V

    goto :goto_0

    .line 248
    :cond_1
    const-string/jumbo v1, "getBluetoothAdapterState"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    invoke-direct {p0, p2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->getBluetoothAdapterState(Liny;)V

    goto :goto_0

    .line 250
    :cond_2
    const-string/jumbo v1, "startBluetoothDevicesDiscovery"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2121
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 251
    invoke-direct {p0, v1, p2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->startBluetoothDevicesDiscovery(Lcom/alibaba/fastjson/JSONObject;Liny;)V

    goto :goto_0

    .line 252
    :cond_3
    const-string/jumbo v1, "stopBluetoothDevicesDiscovery"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    invoke-direct {p0, p2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->stopBluetoothDevicesDiscovery(Liny;)V

    goto :goto_0

    .line 254
    :cond_4
    const-string/jumbo v1, "getBluetoothDevices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 255
    invoke-direct {p0, p2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->getBluetoothDevices(Liny;)V

    goto :goto_0

    .line 256
    :cond_5
    const-string/jumbo v1, "getConnectedBluetoothDevices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 257
    invoke-direct {p0, p2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->getConnectedBluetoothDevices(Liny;)V

    goto :goto_0

    .line 258
    :cond_6
    const-string/jumbo v1, "getBLEDeviceServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3121
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 259
    invoke-direct {p0, v1, p2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->getBleDeviceServices(Lcom/alibaba/fastjson/JSONObject;Liny;)V

    goto :goto_0

    .line 260
    :cond_7
    const-string/jumbo v1, "getBLEDeviceCharacteristics"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4121
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 261
    invoke-direct {p0, v1, p2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->getBleDeviceCharacteristics(Lcom/alibaba/fastjson/JSONObject;Liny;)V

    goto :goto_0

    .line 263
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->addToOperationList(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto/16 :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 3
    .param p1, "filter"    # Liof;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 210
    sget-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->list:Ljava/util/List;

    .line 1021
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1022
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1023
    iget-object v2, p1, Liof;->a:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    .line 212
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->onCreate(Landroid/os/Bundle;)V

    .line 214
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->betterBleListener:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->setBetterBleListener(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;)V

    .line 215
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 216
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->h5Service:Lcom/alipay/mobile/h5container/service/H5Service;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->h5BridgeContextMap:Ljava/util/Map;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->readCharacteristicList:Ljava/util/List;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->operationList:Ljava/util/List;

    .line 220
    return-void
.end method

.method public onRelease()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 224
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "H5BetterBlePlugin"

    const-string/jumbo v2, "onRelease"

    invoke-interface {v0, v1, v2}, Likq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-super {p0}, Lipd;->onRelease()V

    .line 226
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->bleService:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleService;->onDestroy(Landroid/os/Bundle;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->h5BridgeContextMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 230
    iput-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->h5BridgeContextMap:Ljava/util/Map;

    .line 231
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->readCharacteristicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 232
    iput-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->readCharacteristicList:Ljava/util/List;

    .line 233
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->handler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin$TaskHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->operationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
    iput-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/H5BetterBlePlugin;->operationList:Ljava/util/List;

    .line 238
    return-void
.end method
