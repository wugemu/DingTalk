.class public Lorg/webrtc/audio/AppRTCAudioManager;
.super Ljava/lang/Object;
.source "AppRTCAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/audio/AppRTCAudioManager$WiredHeadsetReceiver;,
        Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerEvents;,
        Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;,
        Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;
    }
.end annotation


# static fields
.field private static final SPEAKERPHONE_AUTO:Ljava/lang/String; = "auto"

.field private static final SPEAKERPHONE_FALSE:Ljava/lang/String; = "false"

.field private static final SPEAKERPHONE_TRUE:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String; = "AppRTCAudioManager"


# instance fields
.field private amState:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;

.field private apprtcContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private audioDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;",
            ">;"
        }
    .end annotation
.end field

.field private audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioManager:Landroid/media/AudioManager;

.field private audioManagerEvents:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerEvents;

.field private final bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

.field private defaultAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

.field private enableAudio:Z

.field private hasWiredHeadset:Z

.field private proximitySensor:Lorg/webrtc/audio/AppRTCProximitySensor;

.field private savedAudioMode:I

.field private savedIsMicrophoneMute:Z

.field private savedIsSpeakerPhoneOn:Z

.field private selectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

.field private final useSpeakerphone:Ljava/lang/String;

.field private userSelectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

.field private wiredHeadsetReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->enableAudio:Z

    .line 72
    const/4 v1, -0x2

    iput v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->savedAudioMode:I

    .line 73
    iput-boolean v2, p0, Lorg/webrtc/audio/AppRTCAudioManager;->savedIsSpeakerPhoneOn:Z

    .line 74
    iput-boolean v2, p0, Lorg/webrtc/audio/AppRTCAudioManager;->savedIsMicrophoneMute:Z

    .line 75
    iput-boolean v2, p0, Lorg/webrtc/audio/AppRTCAudioManager;->hasWiredHeadset:Z

    .line 118
    iput-object v3, p0, Lorg/webrtc/audio/AppRTCAudioManager;->proximitySensor:Lorg/webrtc/audio/AppRTCProximitySensor;

    .line 128
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    .line 202
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 203
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->apprtcContext:Ljava/lang/ref/WeakReference;

    .line 204
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->apprtcContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManager:Landroid/media/AudioManager;

    .line 205
    invoke-static {p1, p0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->create(Landroid/content/Context;Lorg/webrtc/audio/AppRTCAudioManager;)Lorg/webrtc/audio/AppRTCBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 206
    new-instance v1, Lorg/webrtc/audio/AppRTCAudioManager$WiredHeadsetReceiver;

    invoke-direct {v1, p0, v3}, Lorg/webrtc/audio/AppRTCAudioManager$WiredHeadsetReceiver;-><init>(Lorg/webrtc/audio/AppRTCAudioManager;Lorg/webrtc/audio/AppRTCAudioManager$1;)V

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->wiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    sget-object v1, Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;->UNINITIALIZED:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->amState:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;

    .line 209
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    sget v1, Lius$a;->pref_speakerphone_key:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lius$a;->pref_speakerphone_default:I

    .line 211
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->useSpeakerphone:Ljava/lang/String;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "useSpeakerphone: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCAudioManager;->useSpeakerphone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->useSpeakerphone:Ljava/lang/String;

    const-string/jumbo v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    sget-object v1, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->EARPIECE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->defaultAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    .line 225
    :goto_0
    new-instance v1, Lorg/webrtc/audio/AppRTCAudioManager$1;

    invoke-direct {v1, p0}, Lorg/webrtc/audio/AppRTCAudioManager$1;-><init>(Lorg/webrtc/audio/AppRTCAudioManager;)V

    invoke-static {p1, v1}, Lorg/webrtc/audio/AppRTCProximitySensor;->create(Landroid/content/Context;Ljava/lang/Runnable;)Lorg/webrtc/audio/AppRTCProximitySensor;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->proximitySensor:Lorg/webrtc/audio/AppRTCProximitySensor;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "defaultAudioDevice: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCAudioManager;->defaultAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    const-string/jumbo v1, "AppRTCAudioManager"

    invoke-static {v1}, Lorg/webrtc/utils/AppRTCUtils;->logDeviceInfo(Ljava/lang/String;)V

    .line 236
    return-void

    .line 216
    :cond_0
    sget-object v1, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->SPEAKER_PHONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->defaultAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    goto :goto_0
.end method

.method static synthetic access$002(Lorg/webrtc/audio/AppRTCAudioManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/audio/AppRTCAudioManager;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->hasWiredHeadset:Z

    return p1
.end method

.method static synthetic access$200(Lorg/webrtc/audio/AppRTCAudioManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/audio/AppRTCAudioManager;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCAudioManager;->onProximitySensorChangedState()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lorg/webrtc/audio/AppRTCAudioManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    new-instance v0, Lorg/webrtc/audio/AppRTCAudioManager;

    invoke-direct {v0, p0}, Lorg/webrtc/audio/AppRTCAudioManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private hasEarpiece()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 533
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->apprtcContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasWiredHeadset()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private onProximitySensorChangedState()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 145
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->useSpeakerphone:Ljava/lang/String;

    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    sget-object v1, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->EARPIECE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    sget-object v1, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->SPEAKER_PHONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    .line 154
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->proximitySensor:Lorg/webrtc/audio/AppRTCProximitySensor;

    invoke-virtual {v0}, Lorg/webrtc/audio/AppRTCProximitySensor;->sensorReportsNearState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    sget-object v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->EARPIECE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-direct {p0, v0}, Lorg/webrtc/audio/AppRTCAudioManager;->setAudioDeviceInternal(Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;)V

    goto :goto_0

    .line 166
    :cond_2
    sget-object v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->SPEAKER_PHONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-direct {p0, v0}, Lorg/webrtc/audio/AppRTCAudioManager;->setAudioDeviceInternal(Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;)V

    goto :goto_0
.end method

.method private registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 482
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->apprtcContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 483
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 487
    :cond_0
    return-void
.end method

.method private setAudioDeviceInternal(Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;)V
    .locals 3
    .param p1, "device"    # Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAudioDeviceInternal(device="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/webrtc/utils/AppRTCUtils;->assertIsTrue(Z)V

    .line 405
    sget-object v0, Lorg/webrtc/audio/AppRTCAudioManager$3;->$SwitchMap$org$webrtc$audio$AppRTCAudioManager$AudioDevice:[I

    invoke-virtual {p1}, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 419
    const-string/jumbo v0, "AppRTCAudioManager"

    const-string/jumbo v1, "Invalid audio device selection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_0
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->selectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    .line 423
    return-void

    .line 407
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/webrtc/audio/AppRTCAudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 410
    :pswitch_1
    invoke-direct {p0, v2}, Lorg/webrtc/audio/AppRTCAudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 413
    :pswitch_2
    invoke-direct {p0, v2}, Lorg/webrtc/audio/AppRTCAudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 416
    :pswitch_3
    invoke-direct {p0, v2}, Lorg/webrtc/audio/AppRTCAudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setMicrophoneMute(Z)V
    .locals 2
    .param p1, "on"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 520
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    .line 521
    .local v0, "wasMuted":Z
    if-ne v0, p1, :cond_0

    .line 525
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto :goto_0
.end method

.method private setSpeakerphoneOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 507
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    .line 508
    .local v0, "wasOn":Z
    if-ne v0, p1, :cond_0

    .line 512
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method private unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 495
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->apprtcContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 496
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 499
    :cond_0
    return-void
.end method


# virtual methods
.method public enableAudioControl(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 710
    iput-boolean p1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->enableAudio:Z

    .line 711
    return-void
.end method

.method public getAudioDevices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 470
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 471
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedAudioDevice()Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;
    .locals 1

    .prologue
    .line 476
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 477
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->selectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    return-object v0
.end method

.method public selectAudioDevice(Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;)V
    .locals 3
    .param p1, "device"    # Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 456
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 457
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    const-string/jumbo v0, "AppRTCAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can not select "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from available "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->userSelectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    .line 461
    invoke-virtual {p0}, Lorg/webrtc/audio/AppRTCAudioManager;->updateAudioDeviceState()V

    .line 462
    return-void
.end method

.method public setDefaultAudioDevice(Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;)V
    .locals 2
    .param p1, "defaultDevice"    # Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 430
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 431
    sget-object v0, Lorg/webrtc/audio/AppRTCAudioManager$3;->$SwitchMap$org$webrtc$audio$AppRTCAudioManager$AudioDevice:[I

    invoke-virtual {p1}, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 443
    const-string/jumbo v0, "AppRTCAudioManager"

    const-string/jumbo v1, "Invalid default audio device selection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setDefaultAudioDevice(device="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->defaultAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {p0}, Lorg/webrtc/audio/AppRTCAudioManager;->updateAudioDeviceState()V

    .line 448
    return-void

    .line 433
    :pswitch_0
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->defaultAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    goto :goto_0

    .line 436
    :pswitch_1
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCAudioManager;->hasEarpiece()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->defaultAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    goto :goto_0

    .line 439
    :cond_0
    sget-object v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->SPEAKER_PHONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    iput-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->defaultAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public start(Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerEvents;)V
    .locals 5
    .param p1, "audioManagerEvents"    # Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerEvents;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 240
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 241
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->amState:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;

    sget-object v2, Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;->RUNNING:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;

    if-ne v1, v2, :cond_1

    .line 242
    const-string/jumbo v1, "AppRTCAudioManager"

    const-string/jumbo v2, "AudioManager is already active"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iput-object p1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManagerEvents:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerEvents;

    .line 250
    sget-object v1, Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;->RUNNING:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->amState:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;

    .line 254
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    iput v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->savedAudioMode:I

    .line 255
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->savedIsSpeakerPhoneOn:Z

    .line 256
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    iput-boolean v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->savedIsMicrophoneMute:Z

    .line 257
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCAudioManager;->hasWiredHeadset()Z

    move-result v1

    iput-boolean v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->hasWiredHeadset:Z

    .line 261
    new-instance v1, Lorg/webrtc/audio/AppRTCAudioManager$2;

    invoke-direct {v1, p0}, Lorg/webrtc/audio/AppRTCAudioManager$2;-><init>(Lorg/webrtc/audio/AppRTCAudioManager;)V

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 308
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 310
    .local v0, "result":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 314
    const-string/jumbo v1, "AppRTCAudioManager"

    const-string/jumbo v2, "Audio focus request failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_2
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 327
    invoke-direct {p0, v4}, Lorg/webrtc/audio/AppRTCAudioManager;->setMicrophoneMute(Z)V

    .line 331
    sget-object v1, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->NONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->userSelectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    .line 332
    sget-object v1, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->NONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    iput-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->selectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    .line 333
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 339
    iget-boolean v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->enableAudio:Z

    if-eqz v1, :cond_3

    .line 340
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-virtual {v1}, Lorg/webrtc/audio/AppRTCBluetoothManager;->start()V

    .line 350
    :cond_3
    invoke-virtual {p0}, Lorg/webrtc/audio/AppRTCAudioManager;->updateAudioDeviceState()V

    .line 355
    iget-boolean v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->enableAudio:Z

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->wiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lorg/webrtc/audio/AppRTCAudioManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 363
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 364
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->amState:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;

    sget-object v1, Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;->RUNNING:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;

    if-eq v0, v1, :cond_0

    .line 365
    const-string/jumbo v0, "AppRTCAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Trying to stop AudioManager in incorrect state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/audio/AppRTCAudioManager;->amState:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_0
    return-void

    .line 368
    :cond_0
    sget-object v0, Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;->UNINITIALIZED:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;

    iput-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->amState:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerState;

    .line 370
    iget-boolean v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->enableAudio:Z

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->wiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lorg/webrtc/audio/AppRTCAudioManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 373
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-virtual {v0}, Lorg/webrtc/audio/AppRTCBluetoothManager;->stop()V

    .line 378
    :cond_1
    iget-boolean v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->savedIsSpeakerPhoneOn:Z

    invoke-direct {p0, v0}, Lorg/webrtc/audio/AppRTCAudioManager;->setSpeakerphoneOn(Z)V

    .line 379
    iget-boolean v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->savedIsMicrophoneMute:Z

    invoke-direct {p0, v0}, Lorg/webrtc/audio/AppRTCAudioManager;->setMicrophoneMute(Z)V

    .line 380
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->savedAudioMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 384
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 385
    iput-object v2, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 388
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->proximitySensor:Lorg/webrtc/audio/AppRTCProximitySensor;

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lorg/webrtc/audio/AppRTCAudioManager;->proximitySensor:Lorg/webrtc/audio/AppRTCProximitySensor;

    invoke-virtual {v0}, Lorg/webrtc/audio/AppRTCProximitySensor;->stop()V

    .line 390
    iput-object v2, p0, Lorg/webrtc/audio/AppRTCAudioManager;->proximitySensor:Lorg/webrtc/audio/AppRTCProximitySensor;

    .line 393
    :cond_2
    iput-object v2, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManagerEvents:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerEvents;

    goto :goto_0
.end method

.method public updateAudioDeviceState()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 562
    invoke-static {}, Lorg/webrtc/ali/ThreadUtils;->checkIsOnMainThread()V

    .line 563
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "--- updateAudioDeviceState: wired headset="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lorg/webrtc/audio/AppRTCAudioManager;->hasWiredHeadset:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", BT state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 565
    invoke-virtual {v8}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 566
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Device status: available="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", selected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/webrtc/audio/AppRTCAudioManager;->selectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", user selected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/webrtc/audio/AppRTCAudioManager;->userSelectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 576
    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-virtual {v7}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v7

    sget-object v8, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_AVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 577
    invoke-virtual {v7}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v7

    sget-object v8, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_UNAVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 578
    invoke-virtual {v7}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v7

    sget-object v8, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_DISCONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-ne v7, v8, :cond_1

    .line 579
    :cond_0
    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-virtual {v7}, Lorg/webrtc/audio/AppRTCBluetoothManager;->updateDevice()V

    .line 584
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 586
    .local v4, "newAudioDevices":Ljava/util/Set;, "Ljava/util/Set<Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;>;"
    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-virtual {v7}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v7

    sget-object v8, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 587
    invoke-virtual {v7}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v7

    sget-object v8, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 588
    invoke-virtual {v7}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v7

    sget-object v8, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_AVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-ne v7, v8, :cond_3

    .line 589
    :cond_2
    sget-object v7, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->BLUETOOTH:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_3
    iget-boolean v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->hasWiredHeadset:Z

    if-eqz v7, :cond_10

    .line 595
    sget-object v7, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->WIRED_HEADSET:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 608
    :cond_4
    :goto_0
    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    move v0, v5

    .line 610
    .local v0, "audioDeviceSetUpdated":Z
    :goto_1
    iput-object v4, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    .line 612
    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-virtual {v7}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v7

    sget-object v8, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_UNAVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->userSelectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    sget-object v8, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->BLUETOOTH:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    if-ne v7, v8, :cond_5

    .line 615
    sget-object v7, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->NONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    iput-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->userSelectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    .line 617
    :cond_5
    iget-boolean v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->hasWiredHeadset:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->userSelectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    sget-object v8, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->SPEAKER_PHONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    if-ne v7, v8, :cond_6

    .line 622
    sget-object v7, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->WIRED_HEADSET:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    iput-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->userSelectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    .line 624
    :cond_6
    iget-boolean v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->hasWiredHeadset:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->userSelectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    sget-object v8, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->WIRED_HEADSET:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    if-ne v7, v8, :cond_7

    .line 629
    sget-object v7, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->SPEAKER_PHONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    iput-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->userSelectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    .line 636
    :cond_7
    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 637
    invoke-virtual {v7}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v7

    sget-object v8, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_AVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-ne v7, v8, :cond_12

    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->userSelectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    sget-object v8, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->NONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    if-eq v7, v8, :cond_8

    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->userSelectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    sget-object v8, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->BLUETOOTH:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    if-ne v7, v8, :cond_12

    :cond_8
    move v1, v5

    .line 645
    .local v1, "needBluetoothAudioStart":Z
    :goto_2
    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 646
    invoke-virtual {v7}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v7

    sget-object v8, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-eq v7, v8, :cond_9

    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 647
    invoke-virtual {v7}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v7

    sget-object v8, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-ne v7, v8, :cond_13

    :cond_9
    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->userSelectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    sget-object v8, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->NONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    if-eq v7, v8, :cond_13

    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->userSelectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    sget-object v8, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->BLUETOOTH:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    if-eq v7, v8, :cond_13

    move v2, v5

    .line 651
    .local v2, "needBluetoothAudioStop":Z
    :goto_3
    iget-object v5, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-virtual {v5}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v5

    sget-object v6, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->HEADSET_AVAILABLE:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-eq v5, v6, :cond_a

    iget-object v5, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 652
    invoke-virtual {v5}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v5

    sget-object v6, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTING:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-eq v5, v6, :cond_a

    iget-object v5, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 653
    invoke-virtual {v5}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v5

    sget-object v6, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-ne v5, v6, :cond_b

    .line 654
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Need BT audio: start="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", stop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", BT state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    .line 656
    invoke-virtual {v6}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 661
    :cond_b
    if-eqz v2, :cond_c

    .line 662
    iget-object v5, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-virtual {v5}, Lorg/webrtc/audio/AppRTCBluetoothManager;->stopScoAudio()V

    .line 663
    iget-object v5, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-virtual {v5}, Lorg/webrtc/audio/AppRTCBluetoothManager;->updateDevice()V

    .line 666
    :cond_c
    if-eqz v1, :cond_d

    if-nez v2, :cond_d

    .line 668
    iget-object v5, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-virtual {v5}, Lorg/webrtc/audio/AppRTCBluetoothManager;->startScoAudio()Z

    move-result v5

    if-nez v5, :cond_d

    .line 670
    iget-object v5, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    sget-object v6, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->BLUETOOTH:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 671
    const/4 v0, 0x1

    .line 678
    :cond_d
    iget-object v5, p0, Lorg/webrtc/audio/AppRTCAudioManager;->bluetoothManager:Lorg/webrtc/audio/AppRTCBluetoothManager;

    invoke-virtual {v5}, Lorg/webrtc/audio/AppRTCBluetoothManager;->getState()Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    move-result-object v5

    sget-object v6, Lorg/webrtc/audio/AppRTCBluetoothManager$State;->SCO_CONNECTED:Lorg/webrtc/audio/AppRTCBluetoothManager$State;

    if-ne v5, v6, :cond_14

    .line 682
    sget-object v3, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->BLUETOOTH:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    .line 695
    .local v3, "newAudioDevice":Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;
    :goto_4
    iget-object v5, p0, Lorg/webrtc/audio/AppRTCAudioManager;->selectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    if-ne v3, v5, :cond_e

    if-eqz v0, :cond_f

    .line 697
    :cond_e
    invoke-direct {p0, v3}, Lorg/webrtc/audio/AppRTCAudioManager;->setAudioDeviceInternal(Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;)V

    .line 698
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "New device status: available="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", selected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 701
    iget-object v5, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManagerEvents:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerEvents;

    if-eqz v5, :cond_f

    .line 703
    iget-object v5, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioManagerEvents:Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerEvents;

    iget-object v6, p0, Lorg/webrtc/audio/AppRTCAudioManager;->selectedAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    iget-object v7, p0, Lorg/webrtc/audio/AppRTCAudioManager;->audioDevices:Ljava/util/Set;

    invoke-interface {v5, v6, v7}, Lorg/webrtc/audio/AppRTCAudioManager$AudioManagerEvents;->onAudioDeviceChanged(Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;Ljava/util/Set;)V

    .line 707
    :cond_f
    return-void

    .line 601
    .end local v0    # "audioDeviceSetUpdated":Z
    .end local v1    # "needBluetoothAudioStart":Z
    .end local v2    # "needBluetoothAudioStop":Z
    .end local v3    # "newAudioDevice":Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;
    :cond_10
    sget-object v7, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->SPEAKER_PHONE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-direct {p0}, Lorg/webrtc/audio/AppRTCAudioManager;->hasEarpiece()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 603
    sget-object v7, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->EARPIECE:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    move v0, v6

    .line 608
    goto/16 :goto_1

    .restart local v0    # "audioDeviceSetUpdated":Z
    :cond_12
    move v1, v6

    .line 637
    goto/16 :goto_2

    .restart local v1    # "needBluetoothAudioStart":Z
    :cond_13
    move v2, v6

    .line 647
    goto/16 :goto_3

    .line 683
    .restart local v2    # "needBluetoothAudioStop":Z
    :cond_14
    iget-boolean v5, p0, Lorg/webrtc/audio/AppRTCAudioManager;->hasWiredHeadset:Z

    if-eqz v5, :cond_15

    .line 686
    sget-object v3, Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;->WIRED_HEADSET:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    .restart local v3    # "newAudioDevice":Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;
    goto :goto_4

    .line 692
    .end local v3    # "newAudioDevice":Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;
    :cond_15
    iget-object v3, p0, Lorg/webrtc/audio/AppRTCAudioManager;->defaultAudioDevice:Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;

    .restart local v3    # "newAudioDevice":Lorg/webrtc/audio/AppRTCAudioManager$AudioDevice;
    goto :goto_4
.end method
