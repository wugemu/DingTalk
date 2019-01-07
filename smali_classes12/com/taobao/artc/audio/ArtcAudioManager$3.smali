.class public final Lcom/taobao/artc/audio/ArtcAudioManager$3;
.super Landroid/content/BroadcastReceiver;
.source "ArtcAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/audio/ArtcAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/artc/audio/ArtcAudioManager;


# direct methods
.method public constructor <init>(Lcom/taobao/artc/audio/ArtcAudioManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/audio/ArtcAudioManager;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$3;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 330
    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 331
    .local v3, "state":I
    const-string/jumbo v4, "microphone"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 332
    .local v1, "microphone":I
    const-string/jumbo v4, "name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v6, "ArtcAudioManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "BroadcastReceiver.onReceive"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljjy;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ": a="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 334
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", s="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_1

    const-string/jumbo v4, "unplugged"

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", m="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v1, v0, :cond_2

    const-string/jumbo v4, "mic"

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", n="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", sb="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 337
    invoke-virtual {p0}, Lcom/taobao/artc/audio/ArtcAudioManager$3;->isInitialStickyBroadcast()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v5, [Ljava/lang/Object;

    .line 333
    invoke-static {v6, v4, v7}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    if-ne v3, v0, :cond_3

    .line 340
    .local v0, "hasWiredHeadset":Z
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 350
    const-string/jumbo v4, "ArtcAudioManager"

    const-string/jumbo v6, "Invalid state"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v5}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    :cond_0
    :goto_3
    return-void

    .line 334
    .end local v0    # "hasWiredHeadset":Z
    :cond_1
    const-string/jumbo v4, "plugged"

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "no mic"

    goto :goto_1

    :cond_3
    move v0, v5

    .line 339
    goto :goto_2

    .line 342
    .restart local v0    # "hasWiredHeadset":Z
    :pswitch_0
    iget-object v4, p0, Lcom/taobao/artc/audio/ArtcAudioManager$3;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 1042
    invoke-virtual {v4, v0}, Lcom/taobao/artc/audio/ArtcAudioManager;->c(Z)V

    goto :goto_3

    .line 345
    :pswitch_1
    iget-object v4, p0, Lcom/taobao/artc/audio/ArtcAudioManager$3;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 2042
    iget-object v4, v4, Lcom/taobao/artc/audio/ArtcAudioManager;->i:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    .line 345
    sget-object v5, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->WIRED_HEADSET:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    if-eq v4, v5, :cond_0

    .line 346
    iget-object v4, p0, Lcom/taobao/artc/audio/ArtcAudioManager$3;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 3042
    invoke-virtual {v4, v0}, Lcom/taobao/artc/audio/ArtcAudioManager;->c(Z)V

    goto :goto_3

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
