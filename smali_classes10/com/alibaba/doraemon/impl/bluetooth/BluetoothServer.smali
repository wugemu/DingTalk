.class public Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;
.super Ljava/lang/Object;
.source "BluetoothServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;,
        Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;,
        Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;
    }
.end annotation


# static fields
.field private static final NAME_INSECURE:Ljava/lang/String; = "BluetoothChatInsecure"

.field private static final TAG:Ljava/lang/String; = "BluetoothServer"


# instance fields
.field private mAcceptThread:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBleConnectedChannelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;",
            ">;"
        }
    .end annotation
.end field

.field mBleServer:Landroid/bluetooth/BluetoothGattService;

.field private mBluetoothChannelListener:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mGattServer:Landroid/bluetooth/BluetoothGattServer;

.field private volatile mIsStarted:Z

.field private mName:Ljava/lang/String;

.field private mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mServerListener:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;

.field private volatile mStoped:Z

.field private mUUID:Ljava/util/UUID;

.field private mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mStoped:Z

    .line 52
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mUUID:Ljava/util/UUID;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBleConnectedChannelMap:Ljava/util/Map;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mUUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBluetoothChannelListener:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Landroid/bluetooth/BluetoothGattServer;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mServerListener:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBleConnectedChannelMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->restart()V

    return-void
.end method

.method private initBleServer()V
    .locals 7

    .prologue
    const/16 v6, 0x12

    const/16 v5, 0x11

    .line 91
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 130
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uuid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " BLE START"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;

    invoke-direct {v4, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$GattServerCallback;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)V

    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    .line 97
    new-instance v2, Landroid/bluetooth/BluetoothGattService;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mUUID:Ljava/util/UUID;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBleServer:Landroid/bluetooth/BluetoothGattService;

    .line 99
    const-string/jumbo v2, "BLUETOOTH"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    .line 100
    .local v1, "bluetoothMagician":Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;
    invoke-interface {v1}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->getBleCharacteristic()Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    move-result-object v0

    .line 102
    .local v0, "bleCharacteristic":Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->getCustomCharacteristicUUID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 103
    new-instance v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 104
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->getCustomCharacteristicUUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v2, v3, v6, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 123
    :goto_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v2, :cond_2

    .line 124
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBleServer:Landroid/bluetooth/BluetoothGattService;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 129
    :goto_2
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBleServer:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattServer;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    goto :goto_0

    .line 109
    :cond_1
    new-instance v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 110
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->getReadCharacteristicUUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v2, v3, v6, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 117
    new-instance v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->getWriteCharacteristicUUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_1

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBleServer:Landroid/bluetooth/BluetoothGattService;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 127
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBleServer:Landroid/bluetooth/BluetoothGattService;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_2
.end method

.method private restart()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mIsStarted:Z

    .line 262
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->stopBleServer()V

    .line 263
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mServerListener:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBluetoothChannelListener:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->start(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    .line 264
    return-void
.end method

.method private stopBleServer()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBleServer:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattServer;->removeService(Landroid/bluetooth/BluetoothGattService;)Z

    .line 138
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->close()V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBleConnectedChannelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public getUUID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mUUID:Ljava/util/UUID;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setBluetoothServerListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;)V
    .locals 0
    .param p1, "serverListener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mServerListener:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;

    .line 284
    return-void
.end method

.method public declared-synchronized start(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
    .locals 2
    .param p1, "serverListener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;
    .param p2, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mIsStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mStoped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uuid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "START"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mServerListener:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;

    .line 61
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBluetoothChannelListener:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_5

    .line 64
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 65
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 70
    :goto_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mName:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mAcceptThread:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mAcceptThread:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 79
    :cond_3
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mAcceptThread:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;

    .line 80
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mAcceptThread:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->start()V

    .line 83
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->initBleServer()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 67
    :cond_5
    :try_start_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mStoped:Z

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "STOP"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mAcceptThread:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mAcceptThread:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$AcceptThread;->cancel()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mServerListener:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->mServerListener:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer$BluetoothServerListener;->onBluetoothServerStoped(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;)V

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothServer;->stopBleServer()V

    .line 280
    return-void
.end method
