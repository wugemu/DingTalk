.class public Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;
.super Ljava/lang/Object;
.source "ClassicBluetoothChannel.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;,
        Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;,
        Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;
    }
.end annotation


# static fields
.field private static final MAX_RETYR:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BluetoothChannel"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCon2BluetoothName:Ljava/lang/String;

.field private mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

.field private mConnectThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

.field private mConnectedThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

.field private mFoundedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

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

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mRetryTime:I

.field private volatile mState:I

.field private mUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    .param p2, "connect2Buletooth"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 98
    invoke-direct {p0, p1, p3}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/util/UUID;)V

    .line 99
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    .line 100
    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mCon2BluetoothName:Ljava/lang/String;

    .line 105
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    .param p2, "connect2Buletooth"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/util/UUID;
    .param p4, "identifyType"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1, p3}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/util/UUID;)V

    .line 89
    const-string/jumbo v0, "MAC_"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    .line 91
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mCon2BluetoothName:Ljava/lang/String;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mCon2BluetoothName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/util/UUID;)V
    .locals 3
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    .param p2, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mListenerList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mFoundedDevices:Ljava/util/List;

    .line 59
    iput v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mRetryTime:I

    .line 64
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mUUID:Ljava/util/UUID;

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 67
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 75
    :goto_0
    iput v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mState:I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mHandler:Landroid/os/Handler;

    .line 77
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mNfcDataPack:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    .line 80
    return-void

    .line 69
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mCon2BluetoothName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mFoundedDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mNfcDataPack:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->setState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mUUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mListenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;
    .param p1, "x1"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->notifyCurrentState(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mState:I

    return v0
.end method

.method static synthetic access$700(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;)Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;
    .param p1, "x1"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    return-object p1
.end method

.method static synthetic access$900(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->retry()V

    return-void
.end method

.method private declared-synchronized connectInternal(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x2

    .line 299
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "connect to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mState:I

    if-ne v0, v2, :cond_0

    .line 303
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->cancel()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectedThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectedThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->cancel()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectedThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    .line 316
    :cond_1
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    .line 317
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->start()V

    .line 318
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyCurrentState(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 405
    if-nez p1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 409
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mCon2BluetoothName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;->onDeviceConnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_2
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 411
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mCon2BluetoothName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;->onDeviceDisconnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_3
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mCon2BluetoothName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "connect failed"

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;->onDeviceConnectionFailed(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private retry()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 545
    iget v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 559
    :goto_0
    return-void

    .line 549
    :cond_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_1
    iget v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mRetryTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mRetryTime:I

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "retry:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mRetryTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 555
    iget v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mRetryTime:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->findAndConnectDevice()V

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 558
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->setState(I)V

    goto :goto_0
.end method

.method private declared-synchronized setState(I)V
    .locals 2
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setState() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 266
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mState:I

    .line 256
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$1;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
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
    .line 394
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$2;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    return-void
.end method

.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 291
    :goto_0
    monitor-exit p0

    return-void

    .line 288
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    .line 289
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mCon2BluetoothName:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->connectInternal(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connected(Landroid/bluetooth/BluetoothSocket;Z)V
    .locals 1
    .param p1, "socket"    # Landroid/bluetooth/BluetoothSocket;
    .param p2, "isServer"    # Z

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->cancel()V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectedThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectedThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->cancel()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectedThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    .line 339
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mRetryTime:I

    .line 340
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->setState(I)V

    .line 342
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;Landroid/bluetooth/BluetoothSocket;Z)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectedThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    .line 343
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectedThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findAndConnectDevice()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mCon2BluetoothName:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mUUID:Ljava/util/UUID;

    if-nez v1, :cond_3

    .line 117
    :cond_1
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->setState(I)V

    .line 139
    :cond_2
    :goto_0
    return-void

    .line 120
    :cond_3
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->setState(I)V

    .line 121
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 126
    :cond_4
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_5

    .line 127
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->connectInternal(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 129
    :cond_5
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 130
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mFoundedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 132
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_2

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.device.action.FOUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$BluetoothReceiver;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mCon2BluetoothName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getState()I
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mUUID:Ljava/util/UUID;

    return-object v0
.end method

.method public removeEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 423
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;->cancel()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectThread;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectedThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectedThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->cancel()V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectedThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 365
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 366
    :cond_2
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
    .locals 3
    .param p1, "packet"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 379
    monitor-enter p0

    .line 380
    :try_start_0
    iget v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectedThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    if-nez v1, :cond_0

    monitor-exit p0

    .line 385
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mConnectedThread:Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;

    .line 382
    .local v0, "r":Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel;->mNfcDataPack:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;->encode(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;->write(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 382
    .end local v0    # "r":Lcom/alibaba/doraemon/impl/bluetooth/ClassicBluetoothChannel$ConnectedThread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
