.class public Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
.super Ljava/lang/Object;
.source "BleBluetoothChannel.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;
    }
.end annotation


# static fields
.field private static final CCC:Ljava/util/UUID;

.field private static final CONNECT_TIMEOUT:I = 0x1388

.field private static final DISCOVER_SERVICES_TIMEOUT:I = 0x1388

.field private static final MAX_CONNECT_RETRY:I = 0x8

.field private static final MAX_ERROR_COUNT:I = 0x3

.field private static final RETRY_DELAY_TIME:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "BleBluetoothChannel"

.field private static final hexArray:[C


# instance fields
.field private mBleCharacteristic:Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

.field private mBleGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mCharacteristicOperationExecuting:Z

.field private mCon2BluetoothMac:Ljava/lang/String;

.field private mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

.field private mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

.field private mContinuedNotification:Z

.field private mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mDiscoverServicesTimeOutRunnable:Ljava/lang/Runnable;

.field private volatile mErrorCount:I

.field private final mExecuteLock:Ljava/lang/Integer;

.field private mInBuffer:Ljava/nio/ByteBuffer;

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

.field private final mMainHandler:Landroid/os/Handler;

.field private mNfcDataPack:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

.field private mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mRetryRunnable:Ljava/lang/Runnable;

.field private volatile mRetryTime:I

.field private volatile mState:I

.field private mTimeOutRunnable:Ljava/lang/Runnable;

.field private mUUID:Ljava/util/UUID;

.field private final mWait2Write:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field

.field private mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 406
    const-string/jumbo v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->CCC:Ljava/util/UUID;

    .line 801
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .locals 3
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    .param p2, "connect2Buletooth"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mListenerList:Ljava/util/List;

    .line 60
    iput v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I

    .line 69
    iput v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mRetryTime:I

    .line 70
    iput v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mErrorCount:I

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mWait2Write:Ljava/util/Queue;

    .line 77
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mExecuteLock:Ljava/lang/Integer;

    .line 80
    iput-boolean v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mContinuedNotification:Z

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mMainHandler:Landroid/os/Handler;

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->init(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    .line 106
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCon2BluetoothMac:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/lang/String;Ljava/util/UUID;)V
    .locals 4
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    .param p2, "connect2BuletoothMac"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mListenerList:Ljava/util/List;

    .line 60
    iput v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I

    .line 69
    iput v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mRetryTime:I

    .line 70
    iput v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mErrorCount:I

    .line 75
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mWait2Write:Ljava/util/Queue;

    .line 77
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mExecuteLock:Ljava/lang/Integer;

    .line 80
    iput-boolean v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mContinuedNotification:Z

    .line 82
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mMainHandler:Landroid/os/Handler;

    .line 99
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 100
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->init(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    .line 101
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCon2BluetoothMac:Ljava/lang/String;

    .line 102
    return-void

    .line 100
    :cond_0
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->getGattStatusName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->setState(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->retryConnect()V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->setState(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->close()V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->removeDiscoverServicesTimeout()V

    return-void
.end method

.method static synthetic access$1500(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mUUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mBleCharacteristic:Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "x2"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "x3"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->setNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->removeTimeout()V

    return-void
.end method

.method static synthetic access$2000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mExecuteLock:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCharacteristicOperationExecuting:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCharacteristicOperationExecuting:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
    .param p1, "x1"    # [B

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->storeData([B)V

    return-void
.end method

.method static synthetic access$2400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->doExecute()V

    return-void
.end method

.method static synthetic access$2500(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->getStateName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->connect()V

    return-void
.end method

.method static synthetic access$2700(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mListenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
    .param p1, "x1"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->notifyCurrentState(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->removeRetry()V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->isStop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mNfcDataPack:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->doWrite()V

    return-void
.end method

.method static synthetic access$3200(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mContinuedNotification:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->doRead()V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mErrorCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mErrorCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mErrorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mErrorCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mInBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mWait2Write:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->watchDiscoverServicesTimeout()V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;

    .prologue
    .line 39
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I

    return v0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 804
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 805
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 806
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 807
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 808
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 805
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private close()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 603
    const-string/jumbo v1, "BleBluetoothChannel"

    const-string/jumbo v2, "close gatt"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_0

    .line 606
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 607
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 613
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private connect()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    const-string/jumbo v0, "BleBluetoothChannel"

    const-string/jumbo v1, "connecting device"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->setState(I)V

    .line 151
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->removeTimeout()V

    .line 152
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->removeDiscoverServicesTimeout()V

    .line 155
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->watchTimeout()V

    .line 156
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mBleGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 158
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    .line 161
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    goto :goto_0
.end method

.method private disconnect()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 592
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_0

    .line 594
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private doExecute()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 716
    const-string/jumbo v1, "THREAD"

    .line 717
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 718
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "BleBluetoothChannel"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 719
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 720
    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$7;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$7;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 743
    return-void
.end method

.method private doRead()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mExecuteLock:Ljava/lang/Integer;

    monitor-enter v2

    .line 818
    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCharacteristicOperationExecuting:Z

    if-eqz v1, :cond_2

    .line 819
    monitor-exit v2

    goto :goto_0

    .line 826
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 821
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCharacteristicOperationExecuting:Z

    .line 823
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 826
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .line 829
    .local v0, "reading":Z
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "doRead "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private doWrite()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 746
    monitor-enter p0

    .line 752
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mWait2Write:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 753
    :cond_0
    monitor-exit p0

    .line 798
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mExecuteLock:Ljava/lang/Integer;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    :try_start_1
    iget-boolean v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCharacteristicOperationExecuting:Z

    if-eqz v2, :cond_2

    .line 757
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 798
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 759
    :cond_2
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCharacteristicOperationExecuting:Z

    .line 761
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 764
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 765
    :try_start_4
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mWait2Write:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 767
    .local v0, "toWrite":[B
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 768
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "do Write "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mWait2Write:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 769
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->bytesToHex([B)Ljava/lang/String;

    .line 772
    :cond_3
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v2, :cond_5

    .line 774
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 778
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 779
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 798
    :cond_4
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 764
    .end local v0    # "toWrite":[B
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    .line 782
    .restart local v0    # "toWrite":[B
    :cond_5
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 786
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 788
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 792
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mWriteCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    .line 794
    .local v1, "write":Z
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "write "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private getGattStatusName(I)Ljava/lang/String;
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 512
    sparse-switch p1, :sswitch_data_0

    .line 534
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 514
    :sswitch_0
    const-string/jumbo v0, "GATT_SUCCESS"

    goto :goto_0

    .line 516
    :sswitch_1
    const-string/jumbo v0, "GATT_READ_NOT_PERMITTED"

    goto :goto_0

    .line 518
    :sswitch_2
    const-string/jumbo v0, "GATT_WRITE_NOT_PERMITTED"

    goto :goto_0

    .line 520
    :sswitch_3
    const-string/jumbo v0, "GATT_INSUFFICIENT_AUTHENTICATION"

    goto :goto_0

    .line 522
    :sswitch_4
    const-string/jumbo v0, "GATT_REQUEST_NOT_SUPPORTED"

    goto :goto_0

    .line 524
    :sswitch_5
    const-string/jumbo v0, "GATT_INSUFFICIENT_ENCRYPTION"

    goto :goto_0

    .line 526
    :sswitch_6
    const-string/jumbo v0, "GATT_INVALID_OFFSET"

    goto :goto_0

    .line 528
    :sswitch_7
    const-string/jumbo v0, "GATT_INVALID_ATTRIBUTE_LENGTH"

    goto :goto_0

    .line 530
    :sswitch_8
    const-string/jumbo v0, "GATT_CONNECTION_CONGESTED"

    goto :goto_0

    .line 532
    :sswitch_9
    const-string/jumbo v0, "GATT_FAILURE"

    goto :goto_0

    .line 512
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_6
        0xd -> :sswitch_7
        0xf -> :sswitch_5
        0x8f -> :sswitch_8
        0x101 -> :sswitch_9
    .end sparse-switch
.end method

.method private getStateName(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 538
    packed-switch p1, :pswitch_data_0

    .line 552
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 540
    :pswitch_1
    const-string/jumbo v0, "STATE_NONE"

    goto :goto_0

    .line 542
    :pswitch_2
    const-string/jumbo v0, "STATE_CONNECTED"

    goto :goto_0

    .line 544
    :pswitch_3
    const-string/jumbo v0, "STATE_CONNECTFAILED"

    goto :goto_0

    .line 546
    :pswitch_4
    const-string/jumbo v0, "STATE_CONNECTING"

    goto :goto_0

    .line 548
    :pswitch_5
    const-string/jumbo v0, "STATE_DISCONNECT"

    goto :goto_0

    .line 550
    :pswitch_6
    const-string/jumbo v0, "STATE_STOPED"

    goto :goto_0

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private init(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .locals 3
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    .param p2, "connect2Buletooth"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 110
    const-string/jumbo v1, "BLUETOOTH"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    .line 111
    .local v0, "bluetoothMagician":Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;
    invoke-interface {v0}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->getBleCharacteristic()Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mBleCharacteristic:Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    .line 112
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mBleCharacteristic:Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "to use ble, please set bleCharacteristic first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mBleCharacteristic:Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->isContinuedNotification()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mContinuedNotification:Z

    .line 117
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    .line 118
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mUUID:Ljava/util/UUID;

    .line 119
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$BleGattClientCallback;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$1;)V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mBleGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 121
    new-instance v1, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    invoke-direct {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;-><init>()V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mNfcDataPack:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    .line 123
    return-void
.end method

.method private isConnected()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 582
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStop()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 587
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyCurrentState(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 849
    if-nez p1, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 853
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;->onDeviceConnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 854
    :cond_2
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 855
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;->onDeviceDisconnected(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_3
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 857
    if-nez p2, :cond_4

    .line 858
    const-string/jumbo p2, "connect failed"

    .line 860
    :cond_4
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1, p2}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;->onDeviceConnectionFailed(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 167
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v4, "refresh"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 168
    .local v1, "refresh":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 169
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 170
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 176
    .end local v1    # "refresh":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BleBluetoothChannel"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "refreshing device error,"

    aput-object v5, v4, v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, v3

    .line 176
    goto :goto_0
.end method

.method private removeDiscoverServicesTimeout()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 454
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mDiscoverServicesTimeOutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mDiscoverServicesTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 457
    :cond_0
    return-void
.end method

.method private removeRetry()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mRetryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    :cond_0
    return-void
.end method

.method private removeTimeout()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 428
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mTimeOutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 431
    :cond_0
    return-void
.end method

.method private retryConnect()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 480
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 484
    :cond_0
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mRetryTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mRetryTime:I

    .line 487
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mRetryTime:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 488
    const-string/jumbo v0, "BleBluetoothChannel"

    const-string/jumbo v1, "max retry time, close ble"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x5

    const-string/jumbo v1, "retry connect timeout"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->setState(ILjava/lang/String;)V

    .line 491
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->close()V

    goto :goto_0

    .line 495
    :cond_1
    const-string/jumbo v0, "BleBluetoothChannel"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "retry connect, times:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mRetryTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mRetryRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 498
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$3;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$3;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mRetryRunnable:Ljava/lang/Runnable;

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 408
    if-eqz p1, :cond_0

    .line 409
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mExecuteLock:Ljava/lang/Integer;

    monitor-enter v2

    .line 410
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCharacteristicOperationExecuting:Z

    .line 411
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-virtual {p1, p2, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 414
    sget-object v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->CCC:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 415
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz p3, :cond_1

    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    :goto_0
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 417
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 419
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_0
    return-void

    .line 411
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 415
    .restart local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    :cond_1
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    goto :goto_0
.end method

.method private declared-synchronized setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 556
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->setState(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setState(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "BleBluetoothChannel"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "update state "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I

    invoke-direct {p0, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->getStateName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " -> "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->getStateName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 578
    :goto_0
    monitor-exit p0

    return-void

    .line 565
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I

    .line 569
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$4;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$4;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private storeData([B)V
    .locals 4
    .param p1, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 376
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->bytesToHex([B)Ljava/lang/String;

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mInBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 381
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mInBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 385
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mNfcDataPack:Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mInBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;->decode(Ljava/nio/ByteBuffer;)Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :try_end_0
    .catch Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 386
    .local v0, "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    if-nez v0, :cond_2

    .line 403
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mInBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 404
    .end local v0    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :goto_0
    return-void

    .line 389
    .restart local v0    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    .line 390
    .local v1, "listener":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    if-eqz v1, :cond_3

    .line 391
    invoke-interface {v1, p0, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;->onRead(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
    :try_end_1
    .catch Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 395
    .end local v0    # "inData":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    .end local v1    # "listener":Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "BleBluetoothChannel"

    const-string/jumbo v3, "data illegal, not magic number"

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v2, 0x5

    const-string/jumbo v3, "exception"

    invoke-direct {p0, v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->setState(ILjava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->stop()V

    goto :goto_0
.end method

.method private watchDiscoverServicesTimeout()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 461
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mDiscoverServicesTimeOutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$2;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$2;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mDiscoverServicesTimeOutRunnable:Ljava/lang/Runnable;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mDiscoverServicesTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 476
    return-void
.end method

.method private watchTimeout()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mTimeOutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$1;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mTimeOutRunnable:Ljava/lang/Runnable;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 451
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 836
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$8;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$8;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 846
    return-void
.end method

.method public findAndConnectDevice()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    const-string/jumbo v0, "BleBluetoothChannel"

    const-string/jumbo v3, "start findAndConnectDevice"

    invoke-static {v0, v3}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mUUID:Ljava/util/UUID;

    if-nez v0, :cond_4

    .line 135
    :cond_0
    const-string/jumbo v3, "BleBluetoothChannel"

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "find fail, device is null ?"

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConfirmed2Connect:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_2

    move v0, v1

    .line 136
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    const-string/jumbo v0, "; uuid is null ? "

    aput-object v0, v4, v5

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mUUID:Ljava/util/UUID;

    if-nez v0, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v6

    .line 135
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->setState(I)V

    .line 145
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 135
    goto :goto_0

    :cond_3
    move v1, v2

    .line 136
    goto :goto_1

    .line 142
    :cond_4
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I

    if-eq v0, v6, :cond_1

    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I

    if-eq v0, v5, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->connect()V

    goto :goto_2
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mUUID:Ljava/util/UUID;

    return-object v0
.end method

.method public removeEventListener(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothChannel$Listener;

    .prologue
    .line 866
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 867
    return-void
.end method

.method public stop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 617
    const-string/jumbo v0, "BleBluetoothChannel"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 620
    const-string/jumbo v0, "BleBluetoothChannel"

    const-string/jumbo v1, "already stopped"

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/bluetooth/utils/BleTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCustomCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->setNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 632
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$5;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$5;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mReadCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->setNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    goto :goto_1
.end method

.method public write(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V
    .locals 3
    .param p1, "packet"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    :goto_0
    return-void

    .line 656
    :cond_0
    const-string/jumbo v1, "THREAD"

    .line 657
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 658
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mCon2BluetoothMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;->mUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 659
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 660
    new-instance v1, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$6;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel$6;-><init>(Lcom/alibaba/doraemon/impl/bluetooth/BleBluetoothChannel;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
