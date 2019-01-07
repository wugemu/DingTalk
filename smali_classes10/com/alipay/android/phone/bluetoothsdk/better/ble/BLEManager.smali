.class public Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;
.super Ljava/lang/Object;
.source "BLEManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_DESCRIPTOR_UUID:Ljava/lang/String; = "00002902-0000-1000-8000-00805f9b34fb"

.field private static final KEY_LOCATION_PERMISSION_CHECK:Ljava/lang/String; = "ble_location_permission_check"

.field private static final MIN_SCAN_INTERVAL_TIME:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BLEManager"


# instance fields
.field private allConnectedDeviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private allowDuplicatesKey:Z

.field private betterBleListener:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private bluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private bytes:[B

.field private closeDevice:Z

.field private connectedCallbackCalled:Z

.field private connectedTime:J

.field private context:Landroid/content/Context;

.field private currentConnectedDeviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private deviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private discoverTime:J

.field private foundedDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private isDiscovering:Z

.field private isOpened:Z

.field private leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mBufferOffset:I

.field private openBluetoothAdapterTime:J

.field private scanHandler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;

.field private scanInterval:I

.field private startBluetoothDiscoveryTime:J

.field private startConnectTime:J

.field private writeTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$1;-><init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 117
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$2;-><init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 265
    iput-object p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->deviceMap:Ljava/util/Map;

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->currentConnectedDeviceMap:Ljava/util/Map;

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->allConnectedDeviceMap:Ljava/util/Map;

    .line 269
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 270
    iput-boolean v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->isDiscovering:Z

    .line 271
    iput-boolean v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->closeDevice:Z

    .line 272
    iput-boolean v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->allowDuplicatesKey:Z

    .line 273
    iput-wide v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->openBluetoothAdapterTime:J

    .line 274
    iput-wide v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->startBluetoothDiscoveryTime:J

    .line 275
    iput-wide v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->startConnectTime:J

    .line 276
    iput-wide v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->connectedTime:J

    .line 277
    iput-wide v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->writeTime:J

    .line 278
    iput-wide v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->discoverTime:J

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->foundedDeviceList:Ljava/util/List;

    .line 280
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->handler:Landroid/os/Handler;

    .line 281
    new-instance v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;-><init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->scanHandler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;

    .line 282
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->deviceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->startBluetoothDiscoveryTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->allConnectedDeviceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->startConnectTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->connectedTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->connectedTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->mBufferOffset:I

    return v0
.end method

.method static synthetic access$1402(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->mBufferOffset:I

    return p1
.end method

.method static synthetic access$1500(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bytes:[B

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->writeTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->writeTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->isDiscovering:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->scanInterval:I

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->betterBleListener:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->foundedDeviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->allowDuplicatesKey:Z

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->closeDevice:Z

    return v0
.end method

.method static synthetic access$602(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->closeDevice:Z

    return p1
.end method

.method static synthetic access$700(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->currentConnectedDeviceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->discoverTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->discoverTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->triggerConnectedCallback(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method private checkLocationPermission()Z
    .locals 1

    .prologue
    .line 842
    const/4 v0, 0x1

    return v0
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 347
    :goto_0
    return-void

    .line 325
    :cond_0
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$3;-><init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;)V

    iput-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 344
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 345
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private triggerConnectedCallback(Landroid/bluetooth/BluetoothGatt;)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 315
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->betterBleListener:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->connectedCallbackCalled:Z

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->betterBleListener:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;->onBluetoothConnectionStateChange(Ljava/lang/String;Z)V

    .line 317
    iput-boolean v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->connectedCallbackCalled:Z

    .line 319
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 350
    const-string/jumbo v0, "BLEManager"

    const-string/jumbo v1, "unregisterReceiver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 354
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 355
    return-void
.end method

.method private writeValue(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;)Z
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "writeCharacteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "sendData"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 720
    iput v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->mBufferOffset:I

    .line 721
    if-eqz p3, :cond_1

    const-string/jumbo v6, "0X"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "0x"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 722
    :cond_0
    const/4 v6, 0x2

    invoke-virtual {p3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 724
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3

    .line 725
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bytes:[B

    .line 726
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bytes:[B

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 727
    iget-object v6, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bytes:[B

    mul-int/lit8 v7, v2, 0x2

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 726
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 729
    :cond_2
    iget-object v6, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bytes:[B

    array-length v6, v6

    const/16 v7, 0x14

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 730
    .local v3, "length":I
    iget v6, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->mBufferOffset:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->mBufferOffset:I

    .line 731
    new-array v0, v3, [B

    .line 732
    .local v0, "data":[B
    iget-object v6, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bytes:[B

    invoke-static {v6, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 733
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 735
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v4

    .line 736
    .local v4, "result":Z
    const-string/jumbo v6, "BLEManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "writeCharacteristic, result:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .end local v0    # "data":[B
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "result":Z
    :goto_1
    return v4

    .line 738
    .restart local v0    # "data":[B
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :catch_0
    move-exception v1

    .line 739
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BLEManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "write error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 740
    goto :goto_1

    .line 743
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_3
    const-string/jumbo v6, "BLEManager"

    const-string/jumbo v7, "data error"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 745
    goto :goto_1
.end method


# virtual methods
.method public close(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;)V
    .locals 3
    .param p1, "bleDevice"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 501
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->isSupportBLE(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    if-eqz p1, :cond_0

    .line 505
    const-string/jumbo v0, "BLEManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "close, device:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 507
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->currentConnectedDeviceMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->allConnectedDeviceMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->deviceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public closeAll(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 517
    .local p1, "bleDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;>;"
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->isSupportBLE(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    :goto_0
    return-void

    .line 520
    :cond_0
    const-string/jumbo v1, "BLEManager"

    const-string/jumbo v2, "closeAll"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    if-eqz p1, :cond_2

    .line 523
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    .line 524
    .local v0, "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    iget-object v2, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_1

    .line 525
    iget-object v2, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 526
    const-string/jumbo v2, "BLEManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "device close, deviceId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 530
    .end local v0    # "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->currentConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 531
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->allConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 532
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->deviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public closeBluetoothAdapter()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 302
    const-string/jumbo v0, "BLEManager"

    const-string/jumbo v1, "closeBluetoothAdapter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->unregisterReceiver()V

    .line 304
    invoke-virtual {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->stopBleScan()V

    .line 305
    invoke-virtual {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->disconnectAndClose()V

    .line 306
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->foundedDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 307
    iget-wide v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->openBluetoothAdapterTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->openBluetoothAdapterTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/bluetoothsdk/MonitorHelper;->logBleKeepTime(J)V

    .line 309
    iput-wide v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->openBluetoothAdapterTime:J

    .line 311
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->isOpened:Z

    .line 312
    return-void
.end method

.method public connect(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 7
    .param p1, "address"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 428
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->isSupportBLE(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_UNSUPPORT_BLE:[Ljava/lang/String;

    invoke-direct {v2, v5, v6, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    .line 455
    :goto_0
    return-object v2

    .line 431
    :cond_0
    iput-boolean v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->connectedCallbackCalled:Z

    .line 432
    const-string/jumbo v2, "BLEManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "connect, address:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 434
    const-string/jumbo v2, "BLEManager"

    const-string/jumbo v3, "address is not valid"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICEID_INVALID:[Ljava/lang/String;

    invoke-direct {v2, v5, v6, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->currentConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->currentConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    iget-object v2, v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_2

    .line 438
    const-string/jumbo v2, "BLEManager"

    const-string/jumbo v3, "is already connected"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    invoke-direct {v2, v6, v6}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ)V

    goto :goto_0

    .line 442
    :cond_2
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 443
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_3

    .line 444
    const-string/jumbo v2, "BLEManager"

    const-string/jumbo v3, "Device not found.  Unable to connect."

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICE_NOT_FOUND:[Ljava/lang/String;

    invoke-direct {v2, v5, v6, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->startConnectTime:J

    .line 450
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, v2, v5, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    .line 451
    .local v1, "gatt":Landroid/bluetooth/BluetoothGatt;
    const-string/jumbo v2, "BLEManager"

    const-string/jumbo v3, "Trying to create a new connection."

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    if-nez v1, :cond_4

    .line 453
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CONNECT_FAIL:[Ljava/lang/String;

    invoke-direct {v2, v5, v6, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 455
    :cond_4
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    invoke-direct {v2, v6, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ)V

    goto/16 :goto_0
.end method

.method public disconnect(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 459
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->isSupportBLE(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_UNSUPPORT_BLE:[Ljava/lang/String;

    invoke-direct {v1, v4, v3, v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    .line 476
    :goto_0
    return-object v1

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 463
    const-string/jumbo v1, "BLEManager"

    const-string/jumbo v2, "BluetoothAdapter not initialized"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BLUETOOTHADAPTER_NOT_INITIALIZED:[Ljava/lang/String;

    invoke-direct {v1, v4, v3, v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 467
    const-string/jumbo v1, "BLEManager"

    const-string/jumbo v2, "address is not valid"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICEID_INVALID:[Ljava/lang/String;

    invoke-direct {v1, v4, v3, v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->allConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    .line 471
    .local v0, "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_3

    .line 472
    iget-object v1, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 476
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    invoke-direct {v1, v3, v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ)V

    goto :goto_0

    .line 474
    :cond_3
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    invoke-direct {v1, v3, v3}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ)V

    goto :goto_0
.end method

.method public disconnectAllDevices()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->isSupportBLE(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-object v1

    .line 483
    :cond_1
    const-string/jumbo v2, "BLEManager"

    const-string/jumbo v3, "disconnectAllDevices"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_2

    .line 485
    const-string/jumbo v2, "BLEManager"

    const-string/jumbo v3, "BluetoothAdapter not initialized"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->allConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 490
    .local v1, "bleDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    .line 491
    .local v0, "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    iget-object v3, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v3, :cond_3

    .line 492
    iget-object v3, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 493
    const-string/jumbo v3, "BLEManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "device disconnect, deviceId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public disconnectAndClose(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 536
    const-string/jumbo v0, "BLEManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "disconnectAndClose, address:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->allConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->closeDevice:Z

    .line 540
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->disconnect(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    move-result-object v0

    return-object v0
.end method

.method public disconnectAndClose()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 544
    const-string/jumbo v1, "BLEManager"

    const-string/jumbo v2, "disconnectAndClose"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->disconnectAllDevices()Ljava/util/Collection;

    move-result-object v0

    .line 546
    .local v0, "bleDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;>;"
    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$4;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$4;-><init>(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;Ljava/util/Collection;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 552
    return-void
.end method

.method public getBluetoothCharacteristics(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 12
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 584
    const-string/jumbo v7, "BLEManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getBluetoothCharacteristics, address:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",serviceUUID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v7, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->isSupportBLE(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 586
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v7, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_UNSUPPORT_BLE:[Ljava/lang/String;

    invoke-direct {v1, v11, v10, v7}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    .line 614
    :goto_0
    return-object v1

    .line 588
    :cond_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 589
    const-string/jumbo v7, "BLEManager"

    const-string/jumbo v8, "address is not valid"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v7, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICEID_INVALID:[Ljava/lang/String;

    invoke-direct {v1, v11, v10, v7}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_1
    iget-object v7, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->currentConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 593
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v7, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICE_NOT_FOUND:[Ljava/lang/String;

    invoke-direct {v1, v11, v10, v7}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_2
    invoke-static {p2}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->getUUIDFromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    .line 596
    .local v6, "serviceUUID":Ljava/util/UUID;
    if-nez v6, :cond_3

    .line 597
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v7, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_SERVICEID_INVALID:[Ljava/lang/String;

    invoke-direct {v1, v11, v10, v7}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_3
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    invoke-direct {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>()V

    .line 600
    .local v1, "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v4, "characteristics":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;>;"
    iget-object v7, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->currentConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    .line 602
    .local v0, "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    iget-object v7, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v7, v6}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    .line 603
    .local v5, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v5, :cond_4

    .line 604
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v3

    .line 605
    .local v3, "characteristicList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    if-eqz v3, :cond_4

    .line 606
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 607
    .local v2, "bluetoothGattCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;->createCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 611
    .end local v2    # "bluetoothGattCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v3    # "characteristicList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    :cond_4
    iput-boolean v10, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    .line 612
    iput-boolean v10, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->syncReturn:Z

    .line 613
    iput-object v4, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getBluetoothDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 420
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->deviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getBluetoothServices(Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 10
    .param p1, "address"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 555
    iget-object v6, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->isSupportBLE(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 556
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v6, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_UNSUPPORT_BLE:[Ljava/lang/String;

    invoke-direct {v2, v8, v7, v6}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    .line 580
    :goto_0
    return-object v2

    .line 558
    :cond_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 559
    const-string/jumbo v6, "BLEManager"

    const-string/jumbo v9, "address is not valid"

    invoke-static {v6, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v6, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICEID_INVALID:[Ljava/lang/String;

    invoke-direct {v2, v8, v7, v6}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_1
    iget-object v6, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->currentConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 563
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v6, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICE_NOT_FOUND:[Ljava/lang/String;

    invoke-direct {v2, v8, v7, v6}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_2
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    invoke-direct {v2}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>()V

    .line 566
    .local v2, "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v4, "serviceUUIDs":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattService;>;"
    iget-object v6, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->currentConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    .line 568
    .local v0, "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    iget-object v6, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v5

    .line 569
    .local v5, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    if-eqz v5, :cond_4

    .line 570
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 571
    .local v3, "service":Landroid/bluetooth/BluetoothGattService;
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattService;

    invoke-direct {v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattService;-><init>()V

    .line 572
    .local v1, "bleGattService":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattService;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattService;->serviceId:Ljava/lang/String;

    .line 573
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v7

    :goto_2
    iput-boolean v6, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattService;->isPrimary:Z

    .line 574
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v6, v8

    .line 573
    goto :goto_2

    .line 577
    .end local v1    # "bleGattService":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattService;
    .end local v3    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_4
    iput-boolean v7, v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    .line 578
    iput-boolean v7, v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->syncReturn:Z

    .line 579
    iput-object v4, v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getConnectedBluetoothDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 424
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->currentConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isDiscovering()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->isDiscovering:Z

    return v0
.end method

.method public notifyCharacteristicValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 14
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "characteristicId"    # Ljava/lang/String;
    .param p4, "descriptorUUID"    # Ljava/lang/String;
    .param p5, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 750
    iget-object v11, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->isSupportBLE(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 751
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v11, 0x0

    const/4 v12, 0x1

    sget-object v13, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_UNSUPPORT_BLE:[Ljava/lang/String;

    invoke-direct {v2, v11, v12, v13}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    .line 838
    :cond_0
    :goto_0
    return-object v2

    .line 753
    :cond_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 754
    const-string/jumbo v11, "BLEManager"

    const-string/jumbo v12, "address is not valid"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v11, 0x0

    const/4 v12, 0x1

    sget-object v13, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICEID_INVALID:[Ljava/lang/String;

    invoke-direct {v2, v11, v12, v13}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :cond_2
    iget-object v11, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->currentConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v11, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    .line 758
    .local v1, "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    if-nez v1, :cond_3

    .line 759
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v11, 0x0

    const/4 v12, 0x1

    sget-object v13, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICE_NOT_FOUND:[Ljava/lang/String;

    invoke-direct {v2, v11, v12, v13}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 761
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->getUUIDFromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    .line 762
    .local v10, "serviceUUID":Ljava/util/UUID;
    if-nez v10, :cond_4

    .line 763
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v11, 0x0

    const/4 v12, 0x1

    sget-object v13, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_SERVICEID_INVALID:[Ljava/lang/String;

    invoke-direct {v2, v11, v12, v13}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_4
    invoke-static/range {p3 .. p3}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->getUUIDFromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    .line 766
    .local v5, "characteristicUUID":Ljava/util/UUID;
    if-nez v5, :cond_5

    .line 767
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v11, 0x0

    const/4 v12, 0x1

    sget-object v13, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CHARACTERISTICID_INVALID:[Ljava/lang/String;

    invoke-direct {v2, v11, v12, v13}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_5
    iget-object v3, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 770
    .local v3, "bluetoothGatt":Landroid/bluetooth/BluetoothGatt;
    invoke-virtual {v3, v10}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v9

    .line 771
    .local v9, "service":Landroid/bluetooth/BluetoothGattService;
    const-string/jumbo v12, "BLEManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "service from serviceId is null:"

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v9, :cond_9

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    new-instance v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v2, v11, v12}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ)V

    .line 773
    .local v2, "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    if-eqz v9, :cond_14

    .line 774
    const-string/jumbo v11, "BLEManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "notifyUUID:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 776
    invoke-virtual {v9, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v8

    .line 777
    .local v8, "notifyCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v8, :cond_13

    .line 778
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    .line 779
    .local v4, "charaProp":I
    const-string/jumbo v11, "BLEManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "characteristic properties:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    and-int/lit8 v11, v4, 0x10

    if-eqz v11, :cond_c

    .line 781
    const-string/jumbo v11, "BLEManager"

    const-string/jumbo v12, "notify characteristic"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    move/from16 v0, p5

    invoke-virtual {v3, v8, v0}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 783
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 784
    const-string/jumbo p4, "00002902-0000-1000-8000-00805f9b34fb"

    .line 787
    :cond_6
    invoke-static/range {p4 .. p4}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->getUUIDFromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v6

    .line 788
    .local v6, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v6, :cond_7

    .line 789
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v7

    .line 790
    .local v7, "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_7

    .line 791
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    check-cast v6, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 794
    .end local v7    # "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    .restart local v6    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_7
    const-string/jumbo v12, "BLEManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "descriptor is null:"

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v6, :cond_a

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    if-eqz v6, :cond_8

    .line 796
    if-eqz p5, :cond_b

    sget-object v11, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    :goto_3
    invoke-virtual {v6, v11}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 799
    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 801
    :cond_8
    const-string/jumbo v11, "BLEManager"

    const-string/jumbo v12, "setCharacteristicNotification enabled"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    .line 803
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->syncReturn:Z

    goto/16 :goto_0

    .line 771
    .end local v2    # "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .end local v4    # "charaProp":I
    .end local v6    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v8    # "notifyCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 794
    .restart local v2    # "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .restart local v4    # "charaProp":I
    .restart local v6    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .restart local v8    # "notifyCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_a
    const/4 v11, 0x0

    goto :goto_2

    .line 796
    :cond_b
    sget-object v11, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    goto :goto_3

    .line 804
    .end local v6    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_c
    and-int/lit8 v11, v4, 0x20

    if-eqz v11, :cond_12

    .line 805
    const-string/jumbo v11, "BLEManager"

    const-string/jumbo v12, "indicate characteristic"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    move/from16 v0, p5

    invoke-virtual {v3, v8, v0}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 807
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 808
    const-string/jumbo p4, "00002902-0000-1000-8000-00805f9b34fb"

    .line 811
    :cond_d
    invoke-static/range {p4 .. p4}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->getUUIDFromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v6

    .line 812
    .restart local v6    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v6, :cond_e

    .line 813
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v7

    .line 814
    .restart local v7    # "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    if-eqz v7, :cond_e

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_e

    .line 815
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    check-cast v6, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 818
    .end local v7    # "descriptors":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattDescriptor;>;"
    .restart local v6    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_e
    const-string/jumbo v12, "BLEManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "descriptor is null:"

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v6, :cond_10

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    if-eqz v6, :cond_f

    .line 820
    if-eqz p5, :cond_11

    sget-object v11, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    :goto_5
    invoke-virtual {v6, v11}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 823
    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 825
    :cond_f
    const-string/jumbo v11, "BLEManager"

    const-string/jumbo v12, "setCharacteristicNotification enabled"

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    .line 827
    const/4 v11, 0x0

    iput-boolean v11, v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->syncReturn:Z

    goto/16 :goto_0

    .line 818
    :cond_10
    const/4 v11, 0x0

    goto :goto_4

    .line 820
    :cond_11
    sget-object v11, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    goto :goto_5

    .line 829
    .end local v6    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_12
    sget-object v11, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CHARACTERISTIC_OPERATION_NOT_SUPPORT:[Ljava/lang/String;

    iput-object v11, v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    goto/16 :goto_0

    .line 832
    .end local v4    # "charaProp":I
    :cond_13
    sget-object v11, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CHARACTERISTIC_NOT_FOUND:[Ljava/lang/String;

    iput-object v11, v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    goto/16 :goto_0

    .line 836
    .end local v8    # "notifyCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_14
    sget-object v11, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_SERVICE_NOT_FOUND:[Ljava/lang/String;

    iput-object v11, v2, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public openBluetoothAdapter()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    const-string/jumbo v0, "BLEManager"

    const-string/jumbo v1, "openBluetoothAdapter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->reset()V

    .line 296
    invoke-direct {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->registerReceiver()V

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->openBluetoothAdapterTime:J

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->isOpened:Z

    .line 299
    return-void
.end method

.method public readData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 12
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "characteristicId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 618
    iget-object v9, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->isSupportBLE(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 619
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v9, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_UNSUPPORT_BLE:[Ljava/lang/String;

    invoke-direct {v1, v8, v7, v9}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    .line 666
    :goto_0
    return-object v1

    .line 621
    :cond_0
    const-string/jumbo v9, "BLEManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "readData,address:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",serviceId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",characteristicId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 624
    const-string/jumbo v9, "BLEManager"

    const-string/jumbo v10, "address is not valid"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v9, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICEID_INVALID:[Ljava/lang/String;

    invoke-direct {v1, v8, v7, v9}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_1
    iget-object v9, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->currentConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    .line 628
    .local v0, "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    if-nez v0, :cond_2

    .line 629
    const-string/jumbo v9, "BLEManager"

    const-string/jumbo v10, "not found connected device"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v9, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICE_NOT_FOUND:[Ljava/lang/String;

    invoke-direct {v1, v8, v7, v9}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_2
    invoke-static {p2}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->getUUIDFromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    .line 633
    .local v6, "serviceUUID":Ljava/util/UUID;
    if-nez v6, :cond_3

    .line 634
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v9, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_SERVICEID_INVALID:[Ljava/lang/String;

    invoke-direct {v1, v8, v7, v9}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_3
    invoke-static {p3}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->getUUIDFromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 637
    .local v3, "characteristicUUID":Ljava/util/UUID;
    if-nez v3, :cond_4

    .line 638
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v9, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CHARACTERISTICID_INVALID:[Ljava/lang/String;

    invoke-direct {v1, v8, v7, v9}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_4
    iget-object v9, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v9, v6}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 641
    .local v2, "bluetoothGattService":Landroid/bluetooth/BluetoothGattService;
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    invoke-direct {v1, v8, v7}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ)V

    .line 642
    .local v1, "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    if-eqz v2, :cond_9

    .line 643
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    .line 644
    .local v4, "readCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const-string/jumbo v9, "BLEManager"

    const-string/jumbo v10, "readData"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    if-eqz v4, :cond_8

    .line 646
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_5

    .line 647
    sget-object v7, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CHARACTERISTIC_OPERATION_NOT_SUPPORT:[Ljava/lang/String;

    iput-object v7, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    goto/16 :goto_0

    .line 650
    :cond_5
    iget-object v9, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v9, v4}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v5

    .line 651
    .local v5, "ret":Z
    iput-boolean v5, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    .line 652
    if-nez v5, :cond_6

    :goto_1
    iput-boolean v7, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->syncReturn:Z

    .line 653
    if-eqz v5, :cond_7

    .line 654
    invoke-static {v4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;->createCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleGattCharacteristic;

    move-result-object v7

    iput-object v7, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->obj:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    move v7, v8

    .line 652
    goto :goto_1

    .line 657
    :cond_7
    sget-object v7, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_READ_CHARACTERISTIC_FAIL:[Ljava/lang/String;

    iput-object v7, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    goto/16 :goto_0

    .line 661
    .end local v5    # "ret":Z
    :cond_8
    sget-object v7, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CHARACTERISTIC_NOT_FOUND:[Ljava/lang/String;

    iput-object v7, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    goto/16 :goto_0

    .line 664
    .end local v4    # "readCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_9
    sget-object v7, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_SERVICE_NOT_FOUND:[Ljava/lang/String;

    iput-object v7, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->unregisterReceiver()V

    .line 290
    invoke-virtual {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->stopBleScan()V

    .line 291
    return-void
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "characteristicId"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 670
    iget-object v7, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->isSupportBLE(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 671
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v7, 0x0

    const/4 v8, 0x1

    sget-object v9, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_UNSUPPORT_BLE:[Ljava/lang/String;

    invoke-direct {v1, v7, v8, v9}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    .line 716
    :cond_0
    :goto_0
    return-object v1

    .line 673
    :cond_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 674
    const-string/jumbo v7, "BLEManager"

    const-string/jumbo v8, "address is not valid"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v7, 0x0

    const/4 v8, 0x1

    sget-object v9, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICEID_INVALID:[Ljava/lang/String;

    invoke-direct {v1, v7, v8, v9}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_2
    const-string/jumbo v7, "BLEManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sendData:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-static {p2}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->getUUIDFromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    .line 679
    .local v5, "serviceUUID":Ljava/util/UUID;
    if-nez v5, :cond_3

    .line 680
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v7, 0x0

    const/4 v8, 0x1

    sget-object v9, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_SERVICEID_INVALID:[Ljava/lang/String;

    invoke-direct {v1, v7, v8, v9}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_3
    invoke-static {p3}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->getUUIDFromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 683
    .local v3, "characteristicUUID":Ljava/util/UUID;
    if-nez v3, :cond_4

    .line 684
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v7, 0x0

    const/4 v8, 0x1

    sget-object v9, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CHARACTERISTICID_INVALID:[Ljava/lang/String;

    invoke-direct {v1, v7, v8, v9}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :cond_4
    iget-object v7, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->currentConnectedDeviceMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;

    .line 687
    .local v0, "bleDevice":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;
    if-nez v0, :cond_5

    .line 688
    const-string/jumbo v7, "BLEManager"

    const-string/jumbo v8, "device not found in connected map"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v7, 0x0

    const/4 v8, 0x1

    sget-object v9, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICE_NOT_FOUND:[Ljava/lang/String;

    invoke-direct {v1, v7, v8, v9}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :cond_5
    iget-object v7, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v7, v5}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    .line 692
    .local v2, "bluetoothGattService":Landroid/bluetooth/BluetoothGattService;
    new-instance v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v1, v7, v8}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ)V

    .line 693
    .local v1, "bleResult":Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    if-eqz v2, :cond_a

    .line 694
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    .line 695
    .local v6, "writeCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const-string/jumbo v8, "BLEManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "writeValue, writeCharacteristic is null:"

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v6, :cond_7

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    if-eqz v6, :cond_9

    .line 697
    const-string/jumbo v7, "BLEManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "writeCharacteristic properties:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_6

    .line 699
    const-string/jumbo v7, "BLEManager"

    const-string/jumbo v8, "set write type not response"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 702
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->writeTime:J

    .line 703
    iget-object v7, v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v7, v6, p4}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->writeValue(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;)Z

    move-result v4

    .line 704
    .local v4, "ret":Z
    iput-boolean v4, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->success:Z

    .line 705
    if-nez v4, :cond_8

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->syncReturn:Z

    .line 706
    if-nez v4, :cond_0

    .line 707
    sget-object v7, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_WRITE_CHARACTERISTIC_FAIL:[Ljava/lang/String;

    iput-object v7, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    goto/16 :goto_0

    .line 695
    .end local v4    # "ret":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 705
    .restart local v4    # "ret":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 711
    .end local v4    # "ret":Z
    :cond_9
    sget-object v7, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CHARACTERISTIC_NOT_FOUND:[Ljava/lang/String;

    iput-object v7, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    goto/16 :goto_0

    .line 714
    .end local v6    # "writeCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_a
    sget-object v7, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_SERVICE_NOT_FOUND:[Ljava/lang/String;

    iput-object v7, v1, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;->error:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setBetterBleListener(Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;)V
    .locals 0
    .param p1, "betterBleListener"    # Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->betterBleListener:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BetterBleListener;

    .line 286
    return-void
.end method

.method public startBleScan([Ljava/lang/String;ZI)Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;
    .locals 9
    .param p1, "serviceUUIDs"    # [Ljava/lang/String;
    .param p2, "allowDuplicatesKey"    # Z
    .param p3, "interval"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 362
    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->isSupportBLE(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 363
    new-instance v4, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v5, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_UNSUPPORT_BLE:[Ljava/lang/String;

    invoke-direct {v4, v3, v8, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    move-object v3, v4

    .line 403
    .end local p3    # "interval":I
    :goto_0
    return-object v3

    .line 365
    .restart local p3    # "interval":I
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 366
    const-string/jumbo v4, "BLEManager"

    const-string/jumbo v5, "no location permission"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->checkLocationPermission()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 368
    new-instance v4, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v5, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_SCAN_LOCATION_UNAVAILABLE:[Ljava/lang/String;

    invoke-direct {v4, v3, v8, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0

    .line 371
    :cond_1
    const-string/jumbo v4, "BLEManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startBleScan, isDiscovering:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->isDiscovering:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-boolean v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->isDiscovering:Z

    if-eqz v4, :cond_2

    .line 373
    new-instance v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    invoke-direct {v3, v8, v8}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ)V

    goto :goto_0

    .line 375
    :cond_2
    iput-boolean p2, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->allowDuplicatesKey:Z

    .line 376
    const/16 v4, 0x64

    if-lt p3, v4, :cond_4

    .end local p3    # "interval":I
    :goto_1
    iput p3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->scanInterval:I

    .line 377
    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->deviceMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 378
    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->foundedDeviceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 379
    iget v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->scanInterval:I

    if-lez v4, :cond_3

    .line 380
    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->scanHandler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;

    iget v5, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->scanInterval:I

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 382
    :cond_3
    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_8

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->startBluetoothDiscoveryTime:J

    .line 384
    if-eqz p1, :cond_7

    array-length v4, p1

    if-lez v4, :cond_7

    .line 385
    array-length v4, p1

    new-array v2, v4, [Ljava/util/UUID;

    .line 386
    .local v2, "uuids":[Ljava/util/UUID;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v4, p1

    if-ge v0, v4, :cond_6

    .line 387
    aget-object v4, p1, v0

    invoke-static {v4}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->getUUIDFromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 388
    .local v1, "uuid":Ljava/util/UUID;
    const-string/jumbo v4, "BLEManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "scan, serviceUUID "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    if-eqz v1, :cond_5

    .line 390
    aput-object v1, v2, v0

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "uuid":Ljava/util/UUID;
    .end local v2    # "uuids":[Ljava/util/UUID;
    .restart local p3    # "interval":I
    :cond_4
    move p3, v3

    .line 376
    goto :goto_1

    .line 392
    .end local p3    # "interval":I
    .restart local v0    # "i":I
    .restart local v1    # "uuid":Ljava/util/UUID;
    .restart local v2    # "uuids":[Ljava/util/UUID;
    :cond_5
    new-instance v4, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    sget-object v5, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_SCAN_INVALID_UUID:[Ljava/lang/String;

    invoke-direct {v4, v3, v8, v5}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ[Ljava/lang/String;)V

    move-object v3, v4

    goto/16 :goto_0

    .line 395
    .end local v1    # "uuid":Ljava/util/UUID;
    :cond_6
    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v3, v2, v4}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->isDiscovering:Z

    .line 396
    new-instance v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    iget-boolean v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->isDiscovering:Z

    invoke-direct {v3, v4, v8}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ)V

    goto/16 :goto_0

    .line 398
    .end local v0    # "i":I
    .end local v2    # "uuids":[Ljava/util/UUID;
    :cond_7
    const-string/jumbo v3, "BLEManager"

    const-string/jumbo v4, "scan all devices"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->isDiscovering:Z

    .line 400
    new-instance v3, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    iget-boolean v4, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->isDiscovering:Z

    invoke-direct {v3, v4, v8}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ)V

    goto/16 :goto_0

    .line 403
    :cond_8
    new-instance v4, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;

    invoke-direct {v4, v3, v8}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BleResult;-><init>(ZZ)V

    move-object v3, v4

    goto/16 :goto_0
.end method

.method public stopBleScan()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 407
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/bluetoothsdk/BluetoothHelper;->isSupportBLE(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    const-string/jumbo v0, "BLEManager"

    const-string/jumbo v1, "stopBleScan"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->isDiscovering:Z

    .line 412
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->foundedDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 413
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->scanHandler:Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager$ScanHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/BLEManager;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    goto :goto_0
.end method
