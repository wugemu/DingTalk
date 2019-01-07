.class public Lorg/webrtc/audio/AppRTCBluetoothManager;
.super Ljava/lang/Object;
.source "AppRTCBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;,
        Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;,
        Lorg/webrtc/audio/AppRTCBluetoothManager$State;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_SCO_TIMEOUT_MS:I = 0xfa0

.field private static final MAX_SCO_CONNECTION_ATTEMPTS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AppRTCBluetoothManager"


# instance fields
.field private final apprtcAudioManager:Lorg/webrtc/audio/AppRTCAudioManager;

.field private final apprtcContext:Landroid/content/Context;

.field private final audioManager:Landroid/media/AudioManager;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private final bluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private final bluetoothServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

.field private final bluetoothTimeoutRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field scoConnectionAttempts:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/webrtc/audio/AppRTCAudioManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Lorg/webrtc/audio/AppRTCAudioManager;

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lorg/webrtc/audio/AppRTCBluetoothManager$1;

    invoke-direct {v0, p0}, Lorg/webrtc/audio/AppRTCBluetoothManager$1;-><init>(Lorg/webrtc/audio/AppRTCBluetoothManager;)V

    iput-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothTimeoutRunnable:Ljava/lang/Runnable;

    .line 207
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 208
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->apprtcContext:Landroid/content/Context;

    .line 209
    iput-object p2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->apprtcAudioManager:Lorg/webrtc/audio/AppRTCAudioManager;

    .line 210
    invoke-virtual {p0, p1}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->audioManager:Landroid/media/AudioManager;

    .line 211
    sget-object v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->UNINITIALIZED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    iput-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 212
    new-instance v0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;

    invoke-direct {v0, p0, v1}, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothServiceListener;-><init>(Lorg/webrtc/audio/AppRTCBluetoothManager;Lorg/webrtc/audio/AppRTCBluetoothManager$1;)V

    iput-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 213
    new-instance v0, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lorg/webrtc/audio/AppRTCBluetoothManager$BluetoothHeadsetBroadcastReceiver;-><init>(Lorg/webrtc/audio/AppRTCBluetoothManager;Lorg/webrtc/audio/AppRTCBluetoothManager$1;)V

    iput-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/audio/AppRTCBluetoothManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/audio/AppRTCBluetoothManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothTimeout()V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/audio/AppRTCBluetoothManager;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/audio/AppRTCBluetoothManager;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    return-object v0
.end method

.method static synthetic access$102(Lorg/webrtc/audio/AppRTCBluetoothManager;Lorg/webrtc/audio/AppRTCBluetoothManager$State;)Lorg/webrtc/audio/AppRTCBluetoothManager$State;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/audio/AppRTCBluetoothManager;
    .param p1, "x1"    # Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    return-object p1
.end method

.method static synthetic access$202(Lorg/webrtc/audio/AppRTCBluetoothManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/audio/AppRTCBluetoothManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$300(Lorg/webrtc/audio/AppRTCBluetoothManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/audio/AppRTCBluetoothManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->updateAudioDeviceState()V

    return-void
.end method

.method static synthetic access$402(Lorg/webrtc/audio/AppRTCBluetoothManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/audio/AppRTCBluetoothManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$500(Lorg/webrtc/audio/AppRTCBluetoothManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/audio/AppRTCBluetoothManager;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/webrtc/audio/AppRTCBluetoothManager;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/webrtc/audio/AppRTCBluetoothManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/audio/AppRTCBluetoothManager;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lorg/webrtc/audio/AppRTCBluetoothManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/audio/AppRTCBluetoothManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->cancelTimer()V

    return-void
.end method

.method private bluetoothTimeout()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 463
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 464
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    sget-object v3, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->UNINITIALIZED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v2, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bluetoothTimeout: BT state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", attempts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->scoConnectionAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", SCO is on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 469
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->isScoOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 470
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    sget-object v3, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-ne v2, v3, :cond_0

    .line 474
    const/4 v1, 0x0

    .line 475
    .local v1, "scoConnected":Z
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 476
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 477
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 478
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SCO connected with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const/4 v1, 0x1

    .line 485
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 487
    sget-object v2, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    iput-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 488
    iput v4, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->scoConnectionAttempts:I

    .line 494
    :goto_2
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->updateAudioDeviceState()V

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bluetoothTimeout done: BT state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 482
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SCO is not connected with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 491
    :cond_4
    const-string/jumbo v2, "AppRTCBluetoothManager"

    const-string/jumbo v3, "BT failed to connect after timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->stopScoAudio()V

    goto :goto_2
.end method

.method private cancelTimer()V
    .locals 1

    .prologue
    .line 453
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 455
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/webrtc/ali/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 456
    return-void
.end method

.method static create(Landroid/content/Context;Lorg/webrtc/audio/AppRTCAudioManager;)Lorg/webrtc/audio/AppRTCBluetoothManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioManager"    # Lorg/webrtc/audio/AppRTCAudioManager;

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "create"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/utils/AppRTCUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    new-instance v0, Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/audio/AppRTCBluetoothManager;-><init>(Landroid/content/Context;Lorg/webrtc/audio/AppRTCAudioManager;)V

    return-object v0
.end method

.method private isScoOn()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    return v0
.end method

.method private startTimer()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 446
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 448
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-static {v0, v2, v3}, Lorg/webrtc/ali/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 449
    return-void
.end method

.method private stateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 505
    packed-switch p1, :pswitch_data_0

    .line 527
    :pswitch_0
    const-string/jumbo v0, "INVALID"

    :goto_0
    return-object v0

    .line 507
    :pswitch_1
    const-string/jumbo v0, "DISCONNECTED"

    goto :goto_0

    .line 509
    :pswitch_2
    const-string/jumbo v0, "CONNECTED"

    goto :goto_0

    .line 511
    :pswitch_3
    const-string/jumbo v0, "CONNECTING"

    goto :goto_0

    .line 513
    :pswitch_4
    const-string/jumbo v0, "DISCONNECTING"

    goto :goto_0

    .line 515
    :pswitch_5
    const-string/jumbo v0, "OFF"

    goto :goto_0

    .line 517
    :pswitch_6
    const-string/jumbo v0, "ON"

    goto :goto_0

    .line 521
    :pswitch_7
    const-string/jumbo v0, "TURNING_OFF"

    goto :goto_0

    .line 525
    :pswitch_8
    const-string/jumbo v0, "TURNING_ON"

    goto :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private updateAudioDeviceState()V
    .locals 1

    .prologue
    .line 439
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 441
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->apprtcAudioManager:Lorg/webrtc/audio/AppRTCAudioManager;

    invoke-virtual {v0}, Lorg/webrtc/audio/AppRTCAudioManager;->updateAudioDeviceState()V

    .line 442
    return-void
.end method


# virtual methods
.method protected getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method protected getBluetoothProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "profile"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    return v0
.end method

.method public getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 219
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    return-object v0
.end method

.method protected hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 415
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->apprtcContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected logBluetoothAdapterInfo(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 5
    .param p1, "localAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "BluetoothAdapter: enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 424
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/webrtc/audio/AppRTCBluetoothManager;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 425
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 426
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 429
    .local v1, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 431
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 432
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " name="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 435
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method protected registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 402
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->apprtcContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 403
    return-void
.end method

.method public start()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 236
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 238
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->apprtcContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v1, v2}, Lorg/webrtc/audio/AppRTCBluetoothManager;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    const-string/jumbo v1, "AppRTCBluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Process (pid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") lacks BLUETOOTH permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    sget-object v2, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->UNINITIALIZED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-eq v1, v2, :cond_1

    .line 243
    const-string/jumbo v1, "AppRTCBluetoothManager"

    const-string/jumbo v2, "Invalid BT state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_1
    iput-object v4, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 247
    iput-object v4, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 248
    const/4 v1, 0x0

    iput v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->scoConnectionAttempts:I

    .line 250
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 251
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_2

    .line 252
    const-string/jumbo v1, "AppRTCBluetoothManager"

    const-string/jumbo v2, "Device does not support Bluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_2
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-nez v1, :cond_3

    .line 257
    const-string/jumbo v1, "AppRTCBluetoothManager"

    const-string/jumbo v2, "Bluetooth SCO audio is not available off call"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_3
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, v1}, Lorg/webrtc/audio/AppRTCBluetoothManager;->logBluetoothAdapterInfo(Landroid/bluetooth/BluetoothAdapter;)V

    .line 263
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->apprtcContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {p0, v1, v2, v3}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getBluetoothProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 265
    const-string/jumbo v1, "AppRTCBluetoothManager"

    const-string/jumbo v2, "BluetoothAdapter.getProfileProxy(HEADSET) failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 271
    .local v0, "bluetoothHeadsetFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "HEADSET profile state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 276
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/webrtc/audio/AppRTCBluetoothManager;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    sget-object v1, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_UNAVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start done: BT state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public startScoAudio()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 319
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startSco: BT state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", attempts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->scoConnectionAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", SCO is on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 322
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->isScoOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 323
    iget v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->scoConnectionAttempts:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 324
    const-string/jumbo v1, "AppRTCBluetoothManager"

    const-string/jumbo v2, "BT SCO connection fails - no more attempts"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_0
    return v0

    .line 327
    :cond_0
    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    sget-object v3, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_AVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-eq v2, v3, :cond_1

    .line 328
    const-string/jumbo v1, "AppRTCBluetoothManager"

    const-string/jumbo v2, "BT SCO connection fails - no headset available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :cond_1
    sget-object v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    iput-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 337
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 338
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 339
    iget v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->scoConnectionAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->scoConnectionAttempts:I

    .line 340
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->startTimer()V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startScoAudio done: BT state="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", SCO is on: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 342
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->isScoOn()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v0, v1

    .line 343
    goto :goto_0
.end method

.method public stop()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 285
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stop: BT state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->stopScoAudio()V

    .line 291
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    sget-object v1, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->UNINITIALIZED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-eq v0, v1, :cond_1

    .line 292
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->cancelTimer()V

    .line 293
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 295
    iput-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 297
    :cond_0
    iput-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 298
    iput-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 299
    sget-object v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->UNINITIALIZED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    iput-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 302
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stop done: BT state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    return-void
.end method

.method public stopScoAudio()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 348
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopScoAudio: BT state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", SCO is on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 350
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->isScoOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 351
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    sget-object v1, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    sget-object v1, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-eq v0, v1, :cond_0

    .line 360
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->cancelTimer()V

    .line 355
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 356
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 357
    sget-object v0, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_DISCONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    iput-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopScoAudio done: BT state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", SCO is on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 359
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->isScoOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 406
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->apprtcContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 407
    return-void
.end method

.method public updateDevice()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 370
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    sget-object v2, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->UNINITIALIZED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 378
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 380
    sget-object v1, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_UNAVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 391
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateDevice done: BT state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 384
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 385
    sget-object v1, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_AVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothState:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Connected bluetooth headset: name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 387
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 388
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/webrtc/audio/AppRTCBluetoothManager;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", SCO audio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lorg/webrtc/audio/AppRTCBluetoothManager;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 389
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
