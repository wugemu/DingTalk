.class final Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;
.super Ljava/lang/Object;
.source "VideoPlayerRender.java"

# interfaces
.implements Leca$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3
    .param p1, "what"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 518
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    const-string/jumbo v1, "onInfo \u2014\u2014> MEDIA_INFO_VIDEO_RENDERING_START"

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_1

    .line 522
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    .line 550
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    goto :goto_0

    .line 526
    :cond_2
    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_4

    .line 527
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    const-string/jumbo v1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_START"

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_3

    .line 530
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    const-string/jumbo v1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_START\uff1aSTATE_BUFFERING_PAUSED"

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    goto :goto_0

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    const-string/jumbo v1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_START\uff1aSTATE_BUFFERING_PLAYING"

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    goto :goto_0

    .line 536
    :cond_4
    const/16 v0, 0x2be

    if-ne p1, v0, :cond_6

    .line 537
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    const-string/jumbo v1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_END"

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->i(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_5

    .line 540
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    const-string/jumbo v1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_END\uff1a STATE_PLAYING"

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    .line 543
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->i(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;)Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    if-ne v0, v1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    const-string/jumbo v1, "onInfo \u2014\u2014> MEDIA_INFO_BUFFERING_END\uff1a STATE_PAUSED"

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Lcom/alibaba/android/dingtalkim/video/play/PlayerState;)V

    goto/16 :goto_0

    .line 548
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender$5;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onInfo \u2014\u2014> what\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerRender;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
