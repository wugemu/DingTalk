.class public Liey;
.super Ljava/lang/Object;
.source "AVDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liey$d;,
        Liey$c;,
        Liey$a;,
        Liey$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field public a:Z

.field public b:Landroid/bluetooth/BluetoothHeadset;

.field public c:Liej;

.field public d:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

.field public e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lied$h;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/media/AudioManager;

.field private p:Landroid/bluetooth/BluetoothAdapter;

.field private q:Liey$a;

.field private r:Liey$b;

.field private s:Landroid/telephony/TelephonyManager;

.field private t:Liey$c;

.field private u:Liey$d;

.field private v:Landroid/os/Handler;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Liey;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liey;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/openav/internal/engine/AVCore;Landroid/content/Context;)V
    .locals 2
    .param p1, "core"    # Lcom/alibaba/wukong/openav/internal/engine/AVCore;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Liey;->i:I

    .line 47
    iput-boolean v1, p0, Liey;->j:Z

    .line 49
    iput-boolean v0, p0, Liey;->k:Z

    .line 50
    iput-boolean v0, p0, Liey;->l:Z

    .line 51
    iput-boolean v0, p0, Liey;->m:Z

    .line 52
    iput-boolean v0, p0, Liey;->n:Z

    .line 74
    iput-boolean v1, p0, Liey;->w:Z

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Liey;->e:Ljava/util/Queue;

    .line 78
    iput-object p2, p0, Liey;->g:Landroid/content/Context;

    .line 79
    iput-object p1, p0, Liey;->h:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .line 80
    return-void
.end method

.method static synthetic a(Liey;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Liey;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 37
    iput-object p1, p0, Liey;->b:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic a(Liey;)Liej;
    .locals 1
    .param p0, "x0"    # Liey;

    .prologue
    .line 37
    iget-object v0, p0, Liey;->c:Liej;

    return-object v0
.end method

.method static synthetic a(Liey;Z)Z
    .locals 0
    .param p0, "x0"    # Liey;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Liey;->j:Z

    return p1
.end method

.method static synthetic b(Liey;)V
    .locals 2
    .param p0, "x0"    # Liey;

    .prologue
    .line 37
    .line 5469
    iget-object v0, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5470
    iget-object v0, p0, Liey;->o:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 5471
    sget-object v0, Liey;->f:Ljava/lang/String;

    const-string/jumbo v1, "startBluetoothSco"

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5473
    :try_start_0
    iget-object v0, p0, Liey;->o:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5477
    :goto_0
    iget-object v0, p0, Liey;->o:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 37
    :cond_0
    return-void

    .line 5474
    :catch_0
    move-exception v0

    .line 5475
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Liey;Z)Z
    .locals 0
    .param p0, "x0"    # Liey;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Liey;->a:Z

    return p1
.end method

.method static synthetic c(Liey;)Lcom/alibaba/wukong/openav/internal/engine/AVCore;
    .locals 1
    .param p0, "x0"    # Liey;

    .prologue
    .line 37
    iget-object v0, p0, Liey;->h:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    return-object v0
.end method

.method static synthetic d(Liey;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Liey;

    .prologue
    .line 37
    iget-object v0, p0, Liey;->b:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic e(Liey;)V
    .locals 0
    .param p0, "x0"    # Liey;

    .prologue
    .line 37
    invoke-virtual {p0}, Liey;->k()V

    return-void
.end method

.method static synthetic f(Liey;)Z
    .locals 1
    .param p0, "x0"    # Liey;

    .prologue
    .line 37
    iget-boolean v0, p0, Liey;->j:Z

    return v0
.end method

.method static synthetic g(Liey;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Liey;

    .prologue
    .line 37
    iget-object v0, p0, Liey;->e:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic h(Liey;)Z
    .locals 1
    .param p0, "x0"    # Liey;

    .prologue
    .line 37
    iget-boolean v0, p0, Liey;->a:Z

    return v0
.end method

.method static synthetic i(Liey;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    .locals 1
    .param p0, "x0"    # Liey;

    .prologue
    .line 37
    iget-object v0, p0, Liey;->d:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    return-object v0
.end method

.method static synthetic j(Liey;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Liey;

    .prologue
    .line 37
    iget-object v0, p0, Liey;->v:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Liey;)Z
    .locals 2
    .param p0, "x0"    # Liey;

    .prologue
    .line 37
    .line 6459
    iget-object v0, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6460
    iget-object v0, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 6461
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 6462
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 6465
    :cond_0
    const/4 v0, 0x0

    .line 37
    goto :goto_0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Liey;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Liey;)Z
    .locals 1
    .param p0, "x0"    # Liey;

    .prologue
    .line 37
    invoke-virtual {p0}, Liey;->j()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 117
    iget-boolean v3, p0, Liey;->w:Z

    if-eqz v3, :cond_0

    .line 172
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string/jumbo v3, "---registerAVDeviceManager"

    .line 1016
    const-string/jumbo v4, "OpenAV"

    invoke-static {v4, v3}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v3, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    iput-object v3, p0, Liey;->d:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 123
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Liey;->v:Landroid/os/Handler;

    .line 124
    iget-object v3, p0, Liey;->g:Landroid/content/Context;

    invoke-static {v3}, Liek;->a(Landroid/content/Context;)Liej;

    move-result-object v3

    iput-object v3, p0, Liey;->c:Liej;

    .line 125
    iget-object v3, p0, Liey;->c:Liej;

    .line 1168
    iget-object v4, v3, Liej;->a:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    iput v4, v3, Liej;->c:I

    .line 126
    iget-boolean v3, p0, Liey;->n:Z

    if-eqz v3, :cond_5

    .line 1420
    iget-object v3, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_1

    .line 1421
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    .line 1423
    :cond_1
    iget-object v3, p0, Liey;->o:Landroid/media/AudioManager;

    if-nez v3, :cond_2

    .line 1424
    iget-object v3, p0, Liey;->g:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Liey;->o:Landroid/media/AudioManager;

    .line 1426
    :cond_2
    iget-object v3, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1427
    iget-object v3, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Liey;->g:Landroid/content/Context;

    new-instance v5, Liey$3;

    invoke-direct {v5, p0}, Liey$3;-><init>(Liey;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 130
    :cond_3
    iget-object v3, p0, Liey;->u:Liey$d;

    if-nez v3, :cond_4

    .line 131
    new-instance v3, Liey$d;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Liey$d;-><init>(Liey;B)V

    iput-object v3, p0, Liey;->u:Liey$d;

    .line 133
    :cond_4
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v2, "scoFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Liey;->g:Landroid/content/Context;

    iget-object v4, p0, Liey;->u:Liey$d;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    .end local v2    # "scoFilter":Landroid/content/IntentFilter;
    :cond_5
    iget-boolean v3, p0, Liey;->k:Z

    if-eqz v3, :cond_8

    .line 142
    iget-object v3, p0, Liey;->t:Liey$c;

    if-nez v3, :cond_6

    .line 143
    new-instance v3, Liey$c;

    invoke-direct {v3, p0}, Liey$c;-><init>(Liey;)V

    iput-object v3, p0, Liey;->t:Liey$c;

    .line 145
    :cond_6
    iget-object v3, p0, Liey;->s:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_7

    .line 146
    iget-object v3, p0, Liey;->g:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Liey;->s:Landroid/telephony/TelephonyManager;

    .line 148
    :cond_7
    iget-object v3, p0, Liey;->s:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Liey;->t:Liey$c;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 151
    :cond_8
    iget-boolean v3, p0, Liey;->l:Z

    if-eqz v3, :cond_a

    .line 153
    iget-object v3, p0, Liey;->r:Liey$b;

    if-nez v3, :cond_9

    .line 154
    new-instance v3, Liey$b;

    invoke-direct {v3, p0}, Liey$b;-><init>(Liey;)V

    iput-object v3, p0, Liey;->r:Liey$b;

    .line 156
    :cond_9
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v1, "networkFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 159
    iget-object v3, p0, Liey;->g:Landroid/content/Context;

    iget-object v4, p0, Liey;->r:Liey$b;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    .end local v1    # "networkFilter":Landroid/content/IntentFilter;
    :cond_a
    iget-boolean v3, p0, Liey;->m:Z

    if-eqz v3, :cond_c

    .line 164
    iget-object v3, p0, Liey;->q:Liey$a;

    if-nez v3, :cond_b

    .line 165
    new-instance v3, Liey$a;

    invoke-direct {v3, p0}, Liey$a;-><init>(Liey;)V

    iput-object v3, p0, Liey;->q:Liey$a;

    .line 167
    :cond_b
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "headsetFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Liey;->g:Landroid/content/Context;

    iget-object v4, p0, Liey;->q:Liey$a;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    .end local v0    # "headsetFilter":Landroid/content/IntentFilter;
    :cond_c
    iput-boolean v6, p0, Liey;->w:Z

    goto/16 :goto_0
.end method

.method public final a(Lied$h;)V
    .locals 1
    .param p1, "listener"    # Lied$h;

    .prologue
    .line 99
    if-eqz p1, :cond_0

    iget-object v0, p0, Liey;->e:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Liey;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    return-void
.end method

.method public final a(Landroid/net/NetworkInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/net/NetworkInfo;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "networkChanged":Z
    invoke-static {p1}, Lorg/webrtc/deviceinfo/SystemInfo;->parseNetWorkType(Landroid/net/NetworkInfo;)I

    move-result v1

    .line 402
    .local v1, "newType":I
    iget v2, p0, Liey;->i:I

    if-ne v2, v3, :cond_0

    .line 403
    iput v1, p0, Liey;->i:I

    .line 404
    iget v2, p0, Liey;->i:I

    invoke-static {v2}, Lcom/taobao/conf/TBConfExternal;->SetNetworkStatus(I)V

    .line 405
    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    .line 407
    :cond_0
    iget v2, p0, Liey;->i:I

    if-eq v2, v1, :cond_1

    .line 408
    const/4 v0, 0x1

    .line 409
    if-eq v1, v3, :cond_1

    .line 410
    iput v1, p0, Liey;->i:I

    .line 413
    :cond_1
    invoke-static {v1}, Lcom/taobao/conf/TBConfExternal;->OnNetworkStatusChanged(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 178
    const-string/jumbo v1, "---destroyAVDeviceManager"

    .line 2016
    const-string/jumbo v2, "OpenAV"

    invoke-static {v2, v1}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-boolean v1, p0, Liey;->w:Z

    if-nez v1, :cond_0

    .line 180
    const-string/jumbo v1, "Device manager has be destroy"

    .line 2050
    const-string/jumbo v2, "OpenAV"

    invoke-static {v2, v1}, Lieg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 184
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Liey;->l:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Liey;->r:Liey$b;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Liey;->g:Landroid/content/Context;

    iget-object v2, p0, Liey;->r:Liey$b;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Liey;->r:Liey$b;

    .line 189
    :cond_1
    iget-boolean v1, p0, Liey;->m:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Liey;->q:Liey$a;

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Liey;->g:Landroid/content/Context;

    iget-object v2, p0, Liey;->q:Liey$a;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Liey;->q:Liey$a;

    .line 194
    :cond_2
    iget-boolean v1, p0, Liey;->k:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Liey;->s:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    .line 195
    iget-object v1, p0, Liey;->s:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Liey;->t:Liey$c;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 196
    const/4 v1, 0x0

    iput-object v1, p0, Liey;->s:Landroid/telephony/TelephonyManager;

    .line 199
    :cond_3
    iget-boolean v1, p0, Liey;->n:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Liey;->u:Liey$d;

    if-eqz v1, :cond_4

    .line 200
    iget-object v1, p0, Liey;->g:Landroid/content/Context;

    iget-object v2, p0, Liey;->u:Liey$d;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Liey;->u:Liey$d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_4
    :goto_1
    iget-boolean v1, p0, Liey;->n:Z

    if-eqz v1, :cond_6

    .line 2491
    iget-object v1, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Liey;->b:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_5

    .line 2492
    iget-object v1, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Liey;->b:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v6, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2493
    iput-object v4, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    .line 2494
    iput-object v4, p0, Liey;->b:Landroid/bluetooth/BluetoothHeadset;

    .line 2496
    :cond_5
    iget-object v1, p0, Liey;->o:Landroid/media/AudioManager;

    if-eqz v1, :cond_6

    .line 2497
    invoke-virtual {p0}, Liey;->k()V

    .line 2498
    iput-object v4, p0, Liey;->o:Landroid/media/AudioManager;

    .line 3386
    :cond_6
    iget-object v1, p0, Liey;->c:Liej;

    if-eqz v1, :cond_8

    .line 3387
    invoke-virtual {p0}, Liey;->h()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3388
    invoke-virtual {p0}, Liey;->d()V

    .line 3390
    :cond_7
    iget-object v1, p0, Liey;->c:Liej;

    .line 4176
    iget v2, v1, Liej;->c:I

    if-ltz v2, :cond_8

    iget-object v2, v1, Liej;->a:Landroid/media/AudioManager;

    if-eqz v2, :cond_8

    .line 4177
    iget-object v2, v1, Liej;->a:Landroid/media/AudioManager;

    iget v1, v1, Liej;->c:I

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 212
    :cond_8
    iput-boolean v6, p0, Liey;->n:Z

    iput-boolean v6, p0, Liey;->m:Z

    iput-boolean v6, p0, Liey;->l:Z

    iput-boolean v6, p0, Liey;->k:Z

    .line 213
    iput-object v4, p0, Liey;->c:Liej;

    .line 214
    iput-boolean v5, p0, Liey;->w:Z

    goto/16 :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final b(Lied$h;)V
    .locals 1
    .param p1, "listener"    # Lied$h;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    iget-object v0, p0, Liey;->e:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Liey;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 224
    iget-object v2, p0, Liey;->c:Liej;

    if-nez v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    sget-object v2, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    iput-object v2, p0, Liey;->d:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 229
    iget-object v2, p0, Liey;->h:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v2, :cond_2

    .line 231
    iget-object v2, p0, Liey;->c:Liej;

    invoke-virtual {v2}, Liej;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 232
    const/4 v0, 0x0

    .line 236
    .local v0, "mode":I
    :goto_1
    iget-object v2, p0, Liey;->h:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    invoke-virtual {v2, v0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(I)V

    .line 239
    .end local v0    # "mode":I
    :cond_2
    const/16 v1, 0xa

    .line 240
    .local v1, "nDelayTime":I
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "LG-P880"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "SM-G9008V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "SM-N9008"

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 242
    :cond_3
    const/16 v1, 0x1f4

    .line 244
    :cond_4
    iget-object v2, p0, Liey;->v:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Liey;->v:Landroid/os/Handler;

    new-instance v3, Liey$1;

    invoke-direct {v3, p0}, Liey$1;-><init>(Liey;)V

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 234
    .end local v1    # "nDelayTime":I
    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "mode":I
    goto :goto_1
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 262
    iget-object v1, p0, Liey;->c:Liej;

    if-nez v1, :cond_0

    .line 5061
    :goto_0
    return-void

    .line 265
    :cond_0
    sget-object v1, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    iput-object v1, p0, Liey;->d:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 266
    iget-object v1, p0, Liey;->h:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Liey;->c:Liej;

    invoke-virtual {v1}, Liej;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    const/4 v0, 0x0

    .line 273
    .local v0, "mode":I
    :goto_1
    iget-object v1, p0, Liey;->h:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(I)V

    .line 275
    .end local v0    # "mode":I
    :cond_1
    iget-object v1, p0, Liey;->c:Liej;

    .line 5054
    iget-object v2, v1, Liej;->b:Liek$c;

    if-eqz v2, :cond_2

    .line 5055
    iget-object v2, v1, Liej;->b:Liek$c;

    iget-object v3, v1, Liej;->a:Landroid/media/AudioManager;

    invoke-interface {v2, v3}, Liek$c;->a(Landroid/media/AudioManager;)V

    .line 5058
    :cond_2
    :try_start_0
    iget-object v1, v1, Liej;->a:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5059
    :catch_0
    move-exception v1

    .line 5060
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 271
    :cond_3
    const/4 v0, 0x3

    .restart local v0    # "mode":I
    goto :goto_1
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 297
    iget-object v0, p0, Liey;->c:Liej;

    if-nez v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->BluetoothHeadset:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    iput-object v0, p0, Liey;->d:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    .line 301
    iget-object v0, p0, Liey;->v:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Liey;->v:Landroid/os/Handler;

    new-instance v1, Liey$2;

    invoke-direct {v1, p0}, Liey$2;-><init>(Liey;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 323
    iget-object v1, p0, Liey;->c:Liej;

    if-eqz v1, :cond_1

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "streamType":I
    iget-object v1, p0, Liey;->o:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Liey;->o:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    const/4 v0, 0x6

    .line 328
    :cond_0
    iget-object v1, p0, Liey;->c:Liej;

    .line 5186
    iget-object v2, v1, Liej;->a:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 5187
    iget-object v1, v1, Liej;->a:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 331
    .end local v0    # "streamType":I
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 337
    iget-object v1, p0, Liey;->c:Liej;

    if-eqz v1, :cond_1

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "streamType":I
    iget-object v1, p0, Liey;->o:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Liey;->o:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const/4 v0, 0x6

    .line 342
    :cond_0
    iget-object v1, p0, Liey;->c:Liej;

    .line 5192
    iget-object v2, v1, Liej;->a:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 5193
    iget-object v1, v1, Liej;->a:Landroid/media/AudioManager;

    const/4 v2, -0x1

    const/4 v3, 0x5

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 344
    .end local v0    # "streamType":I
    :cond_1
    return-void
.end method

.method public final h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 347
    iget-object v0, p0, Liey;->d:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    sget-object v1, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 355
    iget-object v2, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    iget-object v2, p0, Liey;->p:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    .line 357
    .local v0, "state":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 362
    .end local v0    # "state":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Liey;->o:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Liey;->o:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    .line 455
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 483
    iget-object v0, p0, Liey;->o:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Liey;->f:Ljava/lang/String;

    const-string/jumbo v1, "stopBluetoothSco"

    invoke-static {v0, v1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Liey;->o:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 486
    iget-object v0, p0, Liey;->o:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 488
    :cond_0
    return-void
.end method
