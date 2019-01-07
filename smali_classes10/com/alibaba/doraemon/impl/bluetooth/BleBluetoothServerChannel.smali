.class public Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;
.super Landroid/bluetooth/BluetoothGattServerCallback;
.source "BleBluetoothServerChannel.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final EMPTY_RESPONSE:[B

.field private static final TAG:Ljava/lang/String; = "BleServerChannel"


# instance fields
.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothGateServer:Landroid/bluetooth/BluetoothGattServer;

.field private mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mHandler:Landroid/os/Handler;

.field private mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mNfcDataPack:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

.field private mReadBuffer:Ljava/nio/ByteBuffer;

.field private mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private volatile mState:I

.field private mUUID:Ljava/util/UUID;

.field private mWait2Read:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field

.field private mWriteBuffer:Ljava/nio/ByteBuffer;

.field private mWriteByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->EMPTY_RESPONSE:[B

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Landroid/bluetooth/BluetoothGattServer;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    .param p2, "bluetoothGattServer"    # Landroid/bluetooth/BluetoothGattServer;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "readCharacteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p5, "customCharacteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p6, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServerCallback;-><init>()V

    .line 45
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mWriteByte:[B

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mListenerList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mWait2Read:Ljava/util/Queue;

    .line 55
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    const/16 v0, 0x2800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mReadBuffer:Ljava/nio/ByteBuffer;

    .line 57
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mNfcDataPack:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    .line 58
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mBluetoothGateServer:Landroid/bluetooth/BluetoothGattServer;

    .line 59
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 60
    iput-object p4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 61
    iput-object p5, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 62
    iput-object p6, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mUUID:Ljava/util/UUID;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mListenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;
    .param p1, "x1"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->notifyCurrentState(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mState:I

    return v0
.end method

.method private declared-synchronized doRead()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mWait2Read:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 287
    :goto_0
    monitor-exit p0

    return-void

    .line 278
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mWait2Read:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 279
    .local v0, "toRead":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "do Read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 282
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mBluetoothGateServer:Landroid/bluetooth/BluetoothGattServer;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    .end local v0    # "toRead":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 284
    .restart local v0    # "toRead":[B
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 285
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mBluetoothGateServer:Landroid/bluetooth/BluetoothGattServer;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothGattServer;->notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private notifyCurrentState(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    if-nez p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 223
    const-string/jumbo v0, "ble_server"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;->onDeviceConnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 225
    const-string/jumbo v0, "ble_server"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;->onDeviceDisconnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_3
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 227
    const-string/jumbo v0, "ble_server"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "connect failed"

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;->onDeviceConnectionFailed(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized setState(I)V
    .locals 2
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setState() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 216
    :goto_0
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mState:I

    .line 206
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel$1;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel$2;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method

.method public findAndConnectDevice()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mUUID:Ljava/util/UUID;

    return-object v0
.end method

.method public onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 95
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mWait2Read:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mBluetoothGateServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->EMPTY_RESPONSE:[B

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    .line 101
    monitor-exit p0

    .line 120
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mWait2Read:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 106
    .local v5, "toRead":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onCharacteristicReadRequest "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v5, :cond_1

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mBluetoothGateServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    .line 120
    monitor-exit p0

    goto :goto_0

    .end local v5    # "toRead":[B
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 106
    .restart local v5    # "toRead":[B
    :cond_1
    :try_start_1
    array-length v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    .locals 14
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    invoke-super/range {p0 .. p7}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCharacteristicWriteRequest uuid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    const/4 v13, 0x0

    .line 129
    .local v13, "uuid":Ljava/util/UUID;
    const-string/jumbo v2, "BLUETOOTH"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    .line 130
    .local v9, "bluetoothMagician":Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;
    invoke-interface {v9}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->getBleCharacteristic()Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    move-result-object v8

    .line 131
    .local v8, "bleCharacteristic":Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;
    if-eqz v8, :cond_0

    .line 132
    invoke-virtual {v8}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->getCustomCharacteristicUUID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {v8}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->getCustomCharacteristicUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v13

    .line 139
    :cond_0
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    if-eqz p7, :cond_2

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCharacteristicWriteRequest len "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p7

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mReadBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 143
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 146
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mNfcDataPack:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;->decode(Ljava/nio/ByteBuffer;)Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :try_end_0
    .catch Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 147
    .local v11, "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    if-nez v11, :cond_4

    .line 159
    .end local v11    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :goto_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mBluetoothGateServer:Landroid/bluetooth/BluetoothGattServer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->EMPTY_RESPONSE:[B

    move-object v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    .line 164
    return-void

    .line 135
    :cond_3
    invoke-virtual {v8}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->getWriteCharacteristicUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v13

    goto :goto_0

    .line 150
    .restart local v11    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    .line 151
    .local v12, "listener":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    invoke-interface {v12, p0, v11}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;->onRead(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
    :try_end_1
    .catch Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 153
    .end local v11    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    .end local v12    # "listener":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    :catch_0
    move-exception v10

    .line 154
    .local v10, "e":Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException;
    invoke-virtual {v10}, Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException;->printStackTrace()V

    goto :goto_1
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattServerCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 69
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 70
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->setState(I)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    if-nez p3, :cond_0

    .line 72
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->setState(I)V

    goto :goto_0
.end method

.method public onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "offset"    # I
    .param p4, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothGattServerCallback;->onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mBluetoothGateServer:Landroid/bluetooth/BluetoothGattServer;

    sget-object v5, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->EMPTY_RESPONSE:[B

    move-object v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    .line 81
    return-void
.end method

.method public onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "requestId"    # I
    .param p3, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p4, "preparedWrite"    # Z
    .param p5, "responseNeeded"    # Z
    .param p6, "offset"    # I
    .param p7, "value"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-super/range {p0 .. p7}, Landroid/bluetooth/BluetoothGattServerCallback;->onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mBluetoothGateServer:Landroid/bluetooth/BluetoothGattServer;

    sget-object v5, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->EMPTY_RESPONSE:[B

    move-object v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    .line 88
    return-void
.end method

.method public onNotificationSent(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattServerCallback;->onNotificationSent(Landroid/bluetooth/BluetoothDevice;I)V

    .line 170
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->doRead()V

    .line 195
    return-void
.end method

.method public removeEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->setState(I)V

    .line 243
    return-void
.end method

.method public declared-synchronized write(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
    .locals 6
    .param p1, "packet"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mNfcDataPack:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    invoke-virtual {v4, p1}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;->encode(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 249
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mWait2Read:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    .line 252
    .local v2, "need2trigger":Z
    :cond_0
    const/16 v4, 0x14

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 253
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v3, v4, [B

    .line 254
    .local v3, "remainByte":[B
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 255
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mWait2Read:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "write to pool len "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .end local v3    # "remainByte":[B
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gtz v4, :cond_0

    .line 269
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->recycleByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 270
    if-eqz v2, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->doRead()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_1
    monitor-exit p0

    return-void

    .line 260
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->obtainFixedLenByteArray()[B

    move-result-object v1

    .line 261
    .local v1, "mtu_bytes":[B
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v0, v1, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 262
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothServerChannel;->mWait2Read:Ljava/util/Queue;

    invoke-interface {v4, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "mtu_bytes":[B
    .end local v2    # "need2trigger":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
