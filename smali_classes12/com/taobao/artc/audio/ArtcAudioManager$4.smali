.class public final Lcom/taobao/artc/audio/ArtcAudioManager$4;
.super Landroid/os/Handler;
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
.method public constructor <init>(Lcom/taobao/artc/audio/ArtcAudioManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/audio/ArtcAudioManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$4;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 375
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 387
    :goto_0
    return-void

    .line 378
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager$4;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 1042
    iget-object v0, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    .line 378
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 379
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager$4;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 2042
    iget-object v0, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->c:Landroid/media/AudioManager;

    .line 379
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ArtcAudioManager"

    const-string/jumbo v1, "startBluetoothSco() failed. no bluetooth device connected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
