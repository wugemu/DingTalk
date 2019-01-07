.class Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "TaobaoMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventHandler"
.end annotation


# instance fields
.field private mWeakPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;Landroid/os/Looper;)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 382
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 383
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    .line 384
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 388
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;

    .line 389
    .local v1, "player":Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->access$000(Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;)I

    move-result v2

    if-nez v2, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ltv/danmaku/ijk/media/player/EventData;

    .line 394
    .local v11, "event_data":Ltv/danmaku/ijk/media/player/EventData;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 429
    :sswitch_0
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnSeekCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;

    if-eqz v2, :cond_2

    .line 430
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnSeekCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;

    invoke-interface {v2, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;->onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 431
    :cond_2
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnSeekCompletionListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 432
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnSeekCompletionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;

    .line 433
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;->onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_1

    .line 396
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;
    :sswitch_1
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    invoke-virtual {v1, v2, v3}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->monitorPrepared(J)V

    .line 397
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    if-eqz v2, :cond_3

    .line 398
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v2, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 399
    :cond_3
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnPreparedListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnPreparedListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 401
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_2

    .line 406
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    :sswitch_2
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->monitorComplete()V

    .line 407
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->access$102(Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;J)J

    .line 408
    iget-boolean v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->bLooping:Z

    if-eqz v2, :cond_5

    .line 409
    const/4 v2, 0x1

    iput-boolean v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->bSeeked:Z

    .line 410
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnLoopCompletionListeners:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 411
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnLoopCompletionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;

    .line 412
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;->onLoopCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_3

    .line 415
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;
    :cond_4
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->start()V

    goto/16 :goto_0

    .line 418
    :cond_5
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    if-eqz v2, :cond_6

    .line 419
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v2, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 420
    :cond_6
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnCompletionListeners:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 421
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnCompletionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 422
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_4

    .line 425
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    :cond_7
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->access$200(Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;Z)V

    goto/16 :goto_0

    .line 438
    :sswitch_3
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    long-to-int v12, v2

    .line 439
    .local v12, "percent":I
    const/16 v2, 0x64

    if-le v12, v2, :cond_8

    .line 440
    const/16 v12, 0x64

    .line 441
    :cond_8
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    if-eqz v2, :cond_9

    .line 442
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v2, v1, v12}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    .line 443
    :cond_9
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnBufferingUpdateListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnBufferingUpdateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 445
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
    invoke-interface {v0, v1, v12}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    goto :goto_5

    .line 450
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
    .end local v12    # "percent":I
    :sswitch_4
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    long-to-int v2, v2

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->access$302(Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;I)I

    .line 451
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    long-to-int v2, v2

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->access$402(Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;I)I

    .line 452
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v2, :cond_a

    .line 453
    iget-object v0, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->access$300(Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;)I

    move-result v2

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->access$400(Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V

    .line 455
    :cond_a
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnVideoSizeChangedListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnVideoSizeChangedListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 457
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->access$300(Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;)I

    move-result v2

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->access$400(Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V

    goto :goto_6

    .line 463
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
    :sswitch_5
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->monitorBufferStart()V

    .line 464
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v2, :cond_b

    .line 465
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    const-wide/16 v4, 0x2bd

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-interface/range {v2 .. v10}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    .line 466
    :cond_b
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 468
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    const-wide/16 v2, 0x2bd

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    goto :goto_7

    .line 473
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    :sswitch_6
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->monitorBufferEnd()V

    .line 474
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v2, :cond_c

    .line 475
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    const-wide/16 v4, 0x2be

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-interface/range {v2 .. v10}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    .line 476
    :cond_c
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 477
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 478
    .restart local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    const-wide/16 v2, 0x2be

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    goto :goto_8

    .line 483
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    :sswitch_7
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    invoke-virtual {v1, v2, v3}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->monitorRenderStart(J)V

    .line 484
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v2, :cond_d

    .line 485
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    const-wide/16 v4, 0x3

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-interface/range {v2 .. v10}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    .line 486
    :cond_d
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 488
    .restart local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    const-wide/16 v2, 0x3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    goto :goto_9

    .line 494
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    :sswitch_8
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v2, :cond_e

    .line 495
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    iget v3, p1, Landroid/os/Message;->what:I

    int-to-long v4, v3

    iget-wide v6, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    iget-wide v8, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    iget-object v10, v11, Ltv/danmaku/ijk/media/player/EventData;->obj:Ljava/lang/Object;

    move-object v3, v1

    invoke-interface/range {v2 .. v10}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    .line 496
    :cond_e
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 498
    .restart local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    iget v2, p1, Landroid/os/Message;->what:I

    int-to-long v2, v2

    iget-wide v4, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    iget-wide v6, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    iget-object v8, v11, Ltv/danmaku/ijk/media/player/EventData;->obj:Ljava/lang/Object;

    invoke-interface/range {v0 .. v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    goto :goto_a

    .line 503
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    :sswitch_9
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    invoke-static {v1, v2, v3}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->access$102(Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;J)J

    goto/16 :goto_0

    .line 511
    :sswitch_a
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    long-to-int v2, v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2, v3}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->monitorError(II)V

    .line 512
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->monitorPlayExperience()V

    .line 513
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    if-eqz v2, :cond_f

    .line 514
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-wide v4, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    long-to-int v3, v4

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v1, v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    .line 515
    :cond_f
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnErrorListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/TaobaoMediaPlayer;->mOnErrorListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 517
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    iget-wide v4, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    long-to-int v3, v4

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    goto :goto_b

    .line 394
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x2cb -> :sswitch_8
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_a
        0x3eb -> :sswitch_5
        0x3ec -> :sswitch_6
        0x3ee -> :sswitch_a
        0x3ef -> :sswitch_a
        0x3f0 -> :sswitch_a
        0x3f1 -> :sswitch_a
        0x3f2 -> :sswitch_a
        0x406 -> :sswitch_4
        0x407 -> :sswitch_3
        0x44e -> :sswitch_7
        0x7d0 -> :sswitch_9
        0x2711 -> :sswitch_8
    .end sparse-switch
.end method
