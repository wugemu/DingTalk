.class final Lcom/taobao/artc/audio/ArtcAudioManager$1;
.super Ljava/lang/Object;
.source "ArtcAudioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/audio/ArtcAudioManager;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/artc/audio/ArtcAudioManager;


# direct methods
.method constructor <init>(Lcom/taobao/artc/audio/ArtcAudioManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/audio/ArtcAudioManager;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/taobao/artc/audio/ArtcAudioManager$1;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 153
    iget-object v0, p0, Lcom/taobao/artc/audio/ArtcAudioManager$1;->a:Lcom/taobao/artc/audio/ArtcAudioManager;

    .line 1102
    iget-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->g:Ljava/lang/String;

    const-string/jumbo v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1108
    iget-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    sget-object v2, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->EARPIECE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->j:Ljava/util/Set;

    sget-object v2, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->SPEAKER_PHONE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    .line 1109
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    iget-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->h:Ljjz;

    .line 2085
    iget-object v2, v1, Ljjz;->a:Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v2}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 2086
    iget-boolean v1, v1, Ljjz;->d:Z

    .line 1110
    if-eqz v1, :cond_1

    .line 1113
    sget-object v1, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->EARPIECE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    invoke-virtual {v0, v1}, Lcom/taobao/artc/audio/ArtcAudioManager;->a(Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;)V

    .line 2437
    :goto_0
    const-string/jumbo v1, "auto"

    iput-object v1, v0, Lcom/taobao/artc/audio/ArtcAudioManager;->g:Ljava/lang/String;

    .line 154
    :cond_0
    return-void

    .line 1117
    :cond_1
    sget-object v1, Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;->SPEAKER_PHONE:Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;

    invoke-virtual {v0, v1}, Lcom/taobao/artc/audio/ArtcAudioManager;->a(Lcom/taobao/artc/audio/ArtcAudioManager$AudioDevice;)V

    goto :goto_0
.end method
