.class public Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;
.super Ljava/lang/Object;
.source "AudioRegulatorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioRegulator"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private static d()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->genAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 115
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v2

    .line 119
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    .line 120
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 123
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static e()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 128
    const/4 v0, 0x1

    .line 130
    .local v0, "retval":Z
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 131
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 61
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->genAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 66
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 69
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->a:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;

    if-eqz v2, :cond_2

    .line 70
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->a:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;

    invoke-interface {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;->a(Landroid/media/AudioManager;)V

    .line 72
    :cond_2
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 73
    .local v1, "currentMusicVolume":I
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->a:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;

    invoke-interface {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;->b(Landroid/media/AudioManager;)V

    .line 75
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 76
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 79
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "initState"    # Z

    .prologue
    .line 168
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    if-nez p1, :cond_0

    .line 170
    sget v0, Lcig$j;->switch_to_handset:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->b()V

    .line 175
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 88
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->genAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 92
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 95
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->a:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;

    if-eqz v2, :cond_2

    .line 96
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->a:Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;

    invoke-interface {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$c;->b(Landroid/media/AudioManager;)V

    .line 98
    :cond_2
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 99
    .local v1, "currentMusicVolume":I
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 104
    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "initState"    # Z

    .prologue
    .line 190
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    if-nez p1, :cond_0

    .line 193
    sget v0, Lcig$j;->switch_to_speaker:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;->a()V

    .line 197
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 203
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->genAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 204
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/AudioRegulatorManager$AudioRegulator;)V

    invoke-static {v1, v2}, Liei;->a(Landroid/content/Context;Liei$a;)V

    goto :goto_0
.end method
