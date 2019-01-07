.class public final Lcom/taobao/artc/audio/ArtcAudioManager;
.super Ljava/lang/Object;
.source "ArtcAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;,
        Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z

.field public c:Landroid/media/AudioManager;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljjz;

.field i:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

.field final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;",
            ">;"
        }
    .end annotation
.end field

.field public k:Landroid/content/BroadcastReceiver;

.field public l:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public m:Landroid/content/BroadcastReceiver;

.field public n:Z

.field public o:Landroid/os/Handler;

.field p:Z

.field public q:Ljka;

.field r:I

.field s:I

.field t:I

.field private final u:Ljava/lang/Runnable;

.field private final v:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceStateChangeListener"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v3, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->b:Z

    .line 63
    iput v3, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->d:I

    .line 64
    iput-boolean v3, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->e:Z

    .line 65
    iput-boolean v3, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->f:Z

    .line 76
    iput-object v2, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->h:Ljjz;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    .line 91
    iput-object v2, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->m:Landroid/content/BroadcastReceiver;

    .line 93
    iput-boolean v3, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->n:Z

    .line 95
    iput-object v2, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->o:Landroid/os/Handler;

    .line 96
    iput-boolean v3, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->p:Z

    .line 97
    iput-object v2, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->q:Ljka;

    .line 539
    iput v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->r:I

    .line 544
    iput v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->w:I

    .line 545
    iput v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->s:I

    .line 546
    iput v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->t:I

    .line 129
    iput-object p1, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->a:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->u:Ljava/lang/Runnable;

    .line 131
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    .line 133
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 137
    const-string/jumbo v0, "auto"

    iput-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->g:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->g:Ljava/lang/String;

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->EARPIECE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    iput-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->v:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    .line 148
    :goto_0
    new-instance v0, Lcom/taobao/artc/audio/ArtcAudioManager$1;

    invoke-direct {v0, p0}, Lcom/taobao/artc/audio/ArtcAudioManager$1;-><init>(Lcom/taobao/artc/audio/ArtcAudioManager;)V

    invoke-static {p1, v0}, Ljjz;->a(Landroid/content/Context;Ljava/lang/Runnable;)Ljjz;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->h:Ljjz;

    .line 156
    const-string/jumbo v0, "ArtcAudioManager"

    .line 1038
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Android SDK: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Brand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Hardware: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Manufacturer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Product: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    return-void

    .line 142
    :cond_0
    sget-object v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->SPEAKER_PHONE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    iput-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->v:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;)V
    .locals 6
    .param p1, "device"    # Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    const-string/jumbo v0, "ArtcAudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setAudioDevice(device="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljjy;->a(Z)V

    .line 283
    sget-object v0, Lcom/taobao/artc/audio/ArtcAudioManager$5;->a:[I

    invoke-virtual {p1}, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 297
    const-string/jumbo v0, "ArtcAudioManager"

    const-string/jumbo v3, "Invalid audio device selection"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1511
    :goto_0
    const-string/jumbo v0, "ArtcAudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onAudioManagerChangedState: devices="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", selected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->i:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1517
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 1518
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    sget-object v3, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->EARPIECE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    sget-object v3, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->SPEAKER_PHONE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    .line 1519
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1518
    :goto_1
    invoke-static {v0}, Ljjy;->a(Z)V

    .line 1521
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->h:Ljjz;

    .line 2063
    iget-object v3, v0, Ljjz;->a:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v3}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 2064
    const-string/jumbo v3, "ArtcProximitySensor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "start"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljjy;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2130
    iget-object v3, v0, Ljjz;->c:Landroid/hardware/Sensor;

    if-nez v3, :cond_6

    .line 2133
    iget-object v3, v0, Ljjz;->b:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, v0, Ljjz;->c:Landroid/hardware/Sensor;

    .line 2134
    iget-object v3, v0, Ljjz;->c:Landroid/hardware/Sensor;

    if-nez v3, :cond_2

    .line 2065
    :goto_2
    if-nez v2, :cond_7

    .line 1529
    :goto_3
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->u:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->u:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 301
    :cond_0
    return-void

    .line 285
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/taobao/artc/audio/ArtcAudioManager;->a(Z)V

    .line 286
    sget-object v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->SPEAKER_PHONE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    iput-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->i:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    goto/16 :goto_0

    .line 289
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/taobao/artc/audio/ArtcAudioManager;->a(Z)V

    .line 290
    sget-object v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->EARPIECE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    iput-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->i:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    goto/16 :goto_0

    .line 293
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/taobao/artc/audio/ArtcAudioManager;->a(Z)V

    .line 294
    sget-object v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->WIRED_HEADSET:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    iput-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->i:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1519
    goto :goto_1

    .line 2143
    :cond_2
    iget-object v3, v0, Ljjz;->c:Landroid/hardware/Sensor;

    if-eqz v3, :cond_6

    .line 2146
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Proximity sensor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2147
    const-string/jumbo v4, "name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Ljjz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2148
    const-string/jumbo v4, ", vendor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Ljjz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2149
    const-string/jumbo v4, ", power: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Ljjz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2150
    const-string/jumbo v4, ", resolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Ljjz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getResolution()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2151
    const-string/jumbo v4, ", max range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Ljjz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2152
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_3

    .line 2154
    const-string/jumbo v4, ", min delay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Ljjz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2156
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-lt v4, v5, :cond_4

    .line 2158
    const-string/jumbo v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Ljjz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2160
    :cond_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_5

    .line 2162
    const-string/jumbo v4, ", max delay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Ljjz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaxDelay()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2163
    const-string/jumbo v4, ", reporting mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Ljjz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2164
    const-string/jumbo v4, ", isWakeUpSensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Ljjz;->c:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2166
    :cond_5
    const-string/jumbo v4, "ArtcProximitySensor"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move v2, v1

    .line 2138
    goto/16 :goto_2

    .line 2069
    :cond_7
    iget-object v1, v0, Ljjz;->b:Landroid/hardware/SensorManager;

    iget-object v2, v0, Ljjz;->c:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/16 :goto_3

    .line 1522
    :cond_8
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 1524
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->h:Ljjz;

    invoke-virtual {v0}, Ljjz;->a()V

    goto/16 :goto_3

    .line 1526
    :cond_9
    const-string/jumbo v0, "ArtcAudioManager"

    const-string/jumbo v1, "Invalid device list"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 5
    .param p1, "on"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 447
    const-string/jumbo v0, "ArtcAudioManager"

    const-string/jumbo v1, "set speaker on:"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 449
    if-nez p1, :cond_0

    .line 450
    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->g:Ljava/lang/String;

    .line 456
    :goto_0
    return-void

    .line 453
    :cond_0
    const-string/jumbo v0, "true"

    iput-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2
    .param p1, "on"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 460
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    .line 461
    .local v0, "wasMuted":Z
    if-ne v0, p1, :cond_0

    .line 465
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 3
    .param p1, "hasWiredHeadset"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 487
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 488
    if-eqz p1, :cond_1

    .line 490
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    sget-object v1, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->WIRED_HEADSET:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_0
    :goto_0
    const-string/jumbo v0, "ArtcAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "audioDevices: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    if-eqz p1, :cond_2

    .line 503
    sget-object v0, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->WIRED_HEADSET:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    invoke-virtual {p0, v0}, Lcom/taobao/artc/audio/ArtcAudioManager;->a(Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;)V

    .line 507
    :goto_1
    return-void

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    sget-object v1, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->SPEAKER_PHONE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2469
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 495
    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    sget-object v1, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->EARPIECE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager;->v:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    invoke-virtual {p0, v0}, Lcom/taobao/artc/audio/ArtcAudioManager;->a(Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;)V

    goto :goto_1
.end method
