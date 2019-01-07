.class Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "IjkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
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
            "Ltv/danmaku/ijk/media/player/IjkMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 672
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 673
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    .line 674
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    .line 678
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 679
    .local v1, "player":Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$000(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 843
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 684
    :cond_1
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ltv/danmaku/ijk/media/player/EventData;

    .line 686
    .local v11, "event_data":Ltv/danmaku/ijk/media/player/EventData;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 688
    :sswitch_1
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    invoke-virtual {v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorPrepared(J)V

    .line 689
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    if-eqz v2, :cond_2

    .line 690
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v2, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 691
    :cond_2
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnPreparedListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 692
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnPreparedListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 693
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_1

    .line 699
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    :sswitch_2
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorComplete()V

    .line 700
    iget-boolean v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->bLooping:Z

    if-eqz v2, :cond_4

    .line 701
    const/4 v2, 0x1

    iput-boolean v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->bSeeked:Z

    .line 702
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnLoopCompletionListeners:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 703
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnLoopCompletionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;

    .line 704
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;->onLoopCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_2

    .line 707
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;
    :cond_3
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    goto :goto_0

    .line 710
    :cond_4
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    if-eqz v2, :cond_5

    .line 711
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v2, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 712
    :cond_5
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnCompletionListeners:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 713
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnCompletionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 714
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_3

    .line 717
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    :cond_6
    invoke-static {v1, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V

    goto/16 :goto_0

    .line 722
    :sswitch_3
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    long-to-int v13, v2

    .line 723
    .local v13, "percent":I
    const/16 v2, 0x64

    if-le v13, v2, :cond_7

    .line 724
    const/16 v13, 0x64

    .line 726
    :cond_7
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    if-eqz v2, :cond_8

    .line 727
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v2, v1, v13}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    .line 728
    :cond_8
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnBufferingUpdateListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 729
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnBufferingUpdateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 730
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
    invoke-interface {v0, v1, v13}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    goto :goto_4

    .line 736
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
    .end local v13    # "percent":I
    :sswitch_4
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    long-to-int v2, v2

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$202(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 737
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    long-to-int v2, v2

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$302(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 738
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v2, :cond_9

    .line 739
    iget-object v0, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v2

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v3

    .line 740
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v4

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$500(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v5

    .line 739
    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V

    .line 741
    :cond_9
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnVideoSizeChangedListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 742
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnVideoSizeChangedListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 743
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$200(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v2

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$300(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v3

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$400(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v4

    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$500(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)I

    move-result v5

    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V

    goto :goto_5

    .line 749
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
    :sswitch_5
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    long-to-int v2, v2

    iget-wide v4, v11, Ltv/danmaku/ijk/media/player/EventData;->arg3:J

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorError(II)V

    .line 750
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorPlayExperience()V

    .line 752
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    if-eqz v2, :cond_a

    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-wide v4, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    long-to-int v3, v4

    iget-wide v4, v11, Ltv/danmaku/ijk/media/player/EventData;->arg3:J

    long-to-int v4, v4

    invoke-interface {v2, v1, v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result v2

    if-nez v2, :cond_b

    .line 753
    :cond_a
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    if-eqz v2, :cond_b

    .line 754
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v2, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 756
    :cond_b
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnErrorListeners:Ljava/util/List;

    if-eqz v2, :cond_c

    .line 757
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnErrorListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 758
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    iget-wide v4, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    long-to-int v3, v4

    iget-wide v4, v11, Ltv/danmaku/ijk/media/player/EventData;->arg3:J

    long-to-int v4, v4

    invoke-interface {v0, v1, v3, v4}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    goto :goto_6

    .line 761
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    :cond_c
    invoke-static {v1, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;Z)V

    goto/16 :goto_0

    .line 765
    :sswitch_6
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    const-wide/16 v4, 0x2bd

    cmp-long v2, v2, v4

    if-nez v2, :cond_f

    .line 766
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorBufferStart()V

    .line 787
    :cond_d
    :goto_7
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v2, :cond_e

    .line 788
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    iget-wide v4, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    iget-wide v6, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    iget-wide v8, v11, Ltv/danmaku/ijk/media/player/EventData;->arg3:J

    iget-object v10, v11, Ltv/danmaku/ijk/media/player/EventData;->obj:Ljava/lang/Object;

    move-object v3, v1

    invoke-interface/range {v2 .. v10}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    .line 789
    :cond_e
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 790
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 791
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    iget-wide v4, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    iget-wide v6, v11, Ltv/danmaku/ijk/media/player/EventData;->arg3:J

    iget-object v8, v11, Ltv/danmaku/ijk/media/player/EventData;->obj:Ljava/lang/Object;

    invoke-interface/range {v0 .. v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    goto :goto_8

    .line 768
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    :cond_f
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    const-wide/16 v4, 0x2be

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    .line 769
    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorBufferEnd()V

    goto :goto_7

    .line 771
    :cond_10
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    .line 772
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    invoke-virtual {v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorRenderStart(J)V

    goto :goto_7

    .line 774
    :cond_11
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    const-wide/16 v4, 0x2c0

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    .line 775
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    invoke-virtual {v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorKeyFramePts(J)V

    goto :goto_7

    .line 777
    :cond_12
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    const-wide/16 v4, 0x2c6

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    .line 778
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    invoke-virtual {v1, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->monitorNetShake(J)V

    goto :goto_7

    .line 780
    :cond_13
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    const-wide/16 v4, 0x2cc

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    .line 781
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 782
    iget-object v12, v11, Ltv/danmaku/ijk/media/player/EventData;->obj:Ljava/lang/Object;

    check-cast v12, Ltv/danmaku/ijk/media/player/misc/FaceDetectInfo;

    .line 783
    .local v12, "info":Ltv/danmaku/ijk/media/player/misc/FaceDetectInfo;
    if-eqz v12, :cond_d

    .line 784
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$600(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;

    move-result-object v2

    iget-wide v4, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    long-to-int v3, v4

    iget-object v4, v12, Ltv/danmaku/ijk/media/player/misc/FaceDetectInfo;->faceRect:[I

    iget-object v5, v12, Ltv/danmaku/ijk/media/player/misc/FaceDetectInfo;->faceLandmarks:[F

    invoke-interface {v2, v3, v4, v5}, Ltv/danmaku/ijk/media/player/misc/IFaceDetectListener;->onFaceDetected(I[I[F)V

    goto/16 :goto_7

    .line 798
    .end local v12    # "info":Ltv/danmaku/ijk/media/player/misc/FaceDetectInfo;
    :sswitch_7
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnSeekCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;

    if-eqz v2, :cond_14

    .line 799
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnSeekCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;

    invoke-interface {v2, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;->onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 800
    :cond_14
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnSeekCompletionListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 801
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnSeekCompletionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;

    .line 802
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;
    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;->onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_9

    .line 815
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;
    :sswitch_8
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    long-to-int v2, v2

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$402(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    .line 816
    iget-wide v2, v11, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    long-to-int v2, v2

    invoke-static {v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$502(Ltv/danmaku/ijk/media/player/IjkMediaPlayer;I)I

    goto/16 :goto_0

    .line 820
    :sswitch_9
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v2, :cond_15

    .line 821
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    iget v3, p1, Landroid/os/Message;->what:I

    int-to-long v4, v3

    move-object v3, v1

    move-wide v8, v6

    invoke-interface/range {v2 .. v10}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    .line 822
    :cond_15
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 823
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 824
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    iget v2, p1, Landroid/os/Message;->what:I

    int-to-long v2, v2

    move-wide v4, v6

    move-object v8, v10

    invoke-interface/range {v0 .. v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    goto :goto_a

    .line 830
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    :sswitch_a
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v2, :cond_16

    .line 831
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    iget v3, p1, Landroid/os/Message;->what:I

    int-to-long v4, v3

    move-object v3, v1

    move-wide v8, v6

    invoke-interface/range {v2 .. v10}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    .line 832
    :cond_16
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 833
    iget-object v2, v1, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 834
    .restart local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    iget v2, p1, Landroid/os/Message;->what:I

    int-to-long v2, v2

    move-wide v4, v6

    move-object v8, v10

    invoke-interface/range {v0 .. v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    goto :goto_b

    .line 686
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_7
        0x5 -> :sswitch_4
        0x63 -> :sswitch_0
        0x64 -> :sswitch_5
        0xc8 -> :sswitch_6
        0x12c -> :sswitch_9
        0x12d -> :sswitch_a
        0x2711 -> :sswitch_8
    .end sparse-switch
.end method
