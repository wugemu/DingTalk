.class final Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 10
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x1388

    .line 398
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->g(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 400
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0}, Lcms;->c(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 404
    :cond_0
    if-eqz p1, :cond_3

    .line 405
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->B(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->B(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 407
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->B(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 408
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 411
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    .line 412
    .local v6, "duration":I
    if-le v6, v7, :cond_2

    .line 413
    .local v7, "maxLoopDuration":I
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, v7

    add-long v8, v0, v2

    .line 414
    .local v8, "finishTime":J
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->B(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11$1;

    invoke-direct {v1, p0, p1, v8, v9}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;Landroid/media/MediaPlayer;J)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 462
    .end local v6    # "duration":I
    .end local v7    # "maxLoopDuration":I
    .end local v8    # "finishTime":J
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->D(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->C(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .restart local v6    # "duration":I
    :cond_2
    move v7, v6

    .line 412
    goto :goto_1

    .line 455
    .end local v6    # "duration":I
    :cond_3
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$11;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method
