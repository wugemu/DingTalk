.class Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;
.super Ljava/lang/Object;
.source "AudioMagicianImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->showPlayPragress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 1292
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1293
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1300(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1300(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1300(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1300(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_1

    .line 1294
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1300(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1300(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onProgressListener(Ljava/lang/String;II)V

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1400(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1400(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1400(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->getDuration()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1400(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->getDuration()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$000(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/OnPlayListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$100(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v3}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1400(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->getCurrentPosition()J

    move-result-wide v4

    long-to-int v3, v4

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl$35;->this$0:Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;->access$1400(Lcom/alibaba/doraemon/impl/audio/AudioMagicianImpl;)Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/doraemon/audio/opus/NewOpusPlayer;->getDuration()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onProgressListener(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
