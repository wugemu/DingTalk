.class final Lhmo$7;
.super Ljava/util/TimerTask;
.source "MiniAppBackgroundAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhmo;


# direct methods
.method constructor <init>(Lhmo;)V
    .locals 0
    .param p1, "this$0"    # Lhmo;

    .prologue
    .line 358
    iput-object p1, p0, Lhmo$7;->a:Lhmo;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 362
    :try_start_0
    iget-object v1, p0, Lhmo$7;->a:Lhmo;

    .line 1023
    iget-object v1, v1, Lhmo;->b:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 362
    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lhmo$7;->a:Lhmo;

    .line 2023
    iget-object v1, v1, Lhmo;->a:Landroid/media/MediaPlayer;

    .line 363
    if-eqz v1, :cond_0

    iget-object v1, p0, Lhmo$7;->a:Lhmo;

    .line 3023
    iget v1, v1, Lhmo;->d:I

    .line 363
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lhmo$7;->a:Lhmo;

    .line 4023
    iget-object v1, v1, Lhmo;->a:Landroid/media/MediaPlayer;

    .line 363
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lhmo$7;->a:Lhmo;

    .line 5023
    iget-object v1, v1, Lhmo;->a:Landroid/media/MediaPlayer;

    .line 363
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_0

    .line 364
    iget-object v1, p0, Lhmo$7;->a:Lhmo;

    .line 6023
    iget-object v1, v1, Lhmo;->b:Lcom/alibaba/doraemon/audio/OnPlayListener;

    .line 364
    iget-object v2, p0, Lhmo$7;->a:Lhmo;

    .line 7023
    iget-object v2, v2, Lhmo;->c:Ljava/lang/String;

    .line 364
    iget-object v3, p0, Lhmo$7;->a:Lhmo;

    .line 8023
    iget-object v3, v3, Lhmo;->a:Landroid/media/MediaPlayer;

    .line 364
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    iget-object v4, p0, Lhmo$7;->a:Lhmo;

    .line 9023
    iget-object v4, v4, Lhmo;->a:Landroid/media/MediaPlayer;

    .line 364
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/audio/OnPlayListener;->onProgressListener(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
