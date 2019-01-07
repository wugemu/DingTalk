.class public final Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ArtcAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/audio/ArtcAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScoBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/artc/audio/ArtcAudioManager;


# direct methods
.method private constructor <init>(Lcom/taobao/artc/audio/ArtcAudioManager;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/taobao/artc/audio/ArtcAudioManager;B)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/artc/audio/ArtcAudioManager;

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;-><init>(Lcom/taobao/artc/audio/ArtcAudioManager;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 550
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    const-string/jumbo v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1042
    iput v2, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->r:I

    .line 558
    const-string/jumbo v1, "ArtcAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "BluetoothHeadset.ACTION_CONNECTION_STATE_CHANGED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 2042
    iget v3, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->r:I

    .line 558
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 3042
    iget v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->r:I

    .line 559
    if-ne v1, v6, :cond_1

    .line 560
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 4042
    iget-object v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->o:Landroid/os/Handler;

    .line 560
    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 5042
    iput-boolean v5, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->p:Z

    .line 562
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 6042
    iget-object v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->o:Landroid/os/Handler;

    .line 562
    invoke-virtual {v1, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 7042
    iget v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->r:I

    .line 565
    if-nez v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 8042
    iget-object v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    .line 566
    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    goto :goto_0

    .line 568
    :cond_2
    const-string/jumbo v1, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    const-string/jumbo v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    const-string/jumbo v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    const-string/jumbo v2, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 9042
    iput v2, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->s:I

    .line 576
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    const-string/jumbo v2, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 10042
    iput v2, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->t:I

    .line 577
    const-string/jumbo v1, "ArtcAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ACTION_SCO_AUDIO_STATE_UPDATED, state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 11042
    iget v3, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->s:I

    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", prev state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 12042
    iget v3, v3, Lcom/taobao/artc/audio/ArtcAudioManager;->t:I

    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 13042
    iget v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->s:I

    .line 579
    if-nez v1, :cond_4

    .line 581
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 14042
    iget-boolean v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->p:Z

    .line 581
    if-eqz v1, :cond_3

    .line 582
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 15042
    iget-object v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->o:Landroid/os/Handler;

    .line 582
    if-eqz v1, :cond_3

    .line 583
    const-string/jumbo v1, "ArtcAudioManager"

    const-string/jumbo v2, "ACTION_SCO_AUDIO_STATE_UPDATED, retry to start bluetooth SCO by myself :-("

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 16042
    iget-object v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->o:Landroid/os/Handler;

    .line 584
    invoke-virtual {v1, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 589
    :cond_3
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 17042
    iget-object v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->q:Ljka;

    .line 589
    if-eqz v1, :cond_4

    .line 590
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 18042
    iget-object v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->q:Ljka;

    .line 590
    invoke-virtual {v1}, Ljka;->onBlueToothDeviceDisconnected()V

    .line 594
    :cond_4
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 19042
    iget v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->s:I

    .line 594
    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 20042
    iget v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->t:I

    .line 594
    if-ne v1, v6, :cond_0

    .line 596
    const-string/jumbo v1, "ArtcAudioManager"

    const-string/jumbo v2, "ACTION_SCO_AUDIO_STATE_UPDATED, bluetooth SCO is working!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 21042
    iput-boolean v4, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->p:Z

    .line 599
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 22042
    iget-object v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->q:Ljka;

    .line 599
    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$ScoBroadcastReceiver;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 23042
    iget-object v1, v1, Lcom/taobao/artc/audio/ArtcAudioManager;->q:Ljka;

    .line 600
    invoke-virtual {v1}, Ljka;->onBlueToothDeviceconnected()V

    goto/16 :goto_0
.end method
