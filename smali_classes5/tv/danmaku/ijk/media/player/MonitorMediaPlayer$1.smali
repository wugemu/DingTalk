.class Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;
.super Ljava/lang/Object;
.source "MonitorMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->checkFirstFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    .prologue
    .line 928
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 932
    :try_start_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    iget-boolean v1, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->bFirstFrameRendered:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    iget-object v1, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    iget-object v1, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v2, v2, Ljos;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v2, v2, Ljos;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mServerIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLocalIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    iget-wide v2, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->video_packets_:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    iget-wide v2, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->audio_packets_:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    iget v2, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->avdiff_:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    iget-object v2, v2, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mConfig:Ljos;

    iget-object v2, v2, Ljos;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    iget-object v1, v1, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->AppMonitor_Module:Ljava/lang/String;

    const-string/jumbo v2, "isVideoOutInTime"

    iget-object v3, p0, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer$1;->this$0:Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;

    iget v3, v3, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;->mLastErrorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
