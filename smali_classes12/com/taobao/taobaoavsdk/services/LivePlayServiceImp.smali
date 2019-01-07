.class public Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;
.super Ljava/lang/Object;
.source "LivePlayServiceImp.java"

# interfaces
.implements Lcom/taobao/taobaoavsdk/IAVObject;
.implements Lcom/taobao/taolive/api/ITBLivePlayService;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# instance fields
.field private mListener:Lcom/taobao/taolive/api/ITBLivePlayService$TaoLivePlayListener;

.field private mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPoistion()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getCurrentPosition()I

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getDuration()I

    move-result v0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getCurrentState()I

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getVideoHeight()I

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->getVideoWidth()I

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initConfig(Landroid/content/Context;Lcom/taobao/taolive/api/TaoLivePlayConfig;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/taobao/taolive/api/TaoLivePlayConfig;

    .prologue
    .line 27
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->release()V

    .line 30
    :cond_0
    new-instance v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {v1, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 31
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 32
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 33
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 34
    if-eqz p2, :cond_1

    .line 36
    new-instance v0, Ljos;

    iget-object v1, p2, Lcom/taobao/taolive/api/TaoLivePlayConfig;->mBusinessId:Ljava/lang/String;

    iget-object v2, p2, Lcom/taobao/taolive/api/TaoLivePlayConfig;->mUserId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljos;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .local v0, "liveConfig":Ljos;
    iget-object v1, p2, Lcom/taobao/taolive/api/TaoLivePlayConfig;->mAccountId:Ljava/lang/String;

    iput-object v1, v0, Ljos;->t:Ljava/lang/String;

    .line 38
    iget v1, p2, Lcom/taobao/taolive/api/TaoLivePlayConfig;->mCoverResId:I

    iput v1, v0, Ljos;->h:I

    .line 39
    iget v1, p2, Lcom/taobao/taolive/api/TaoLivePlayConfig;->mDecoderType:I

    iput v1, v0, Ljos;->e:I

    .line 40
    iget-object v1, p2, Lcom/taobao/taolive/api/TaoLivePlayConfig;->mFeedId:Ljava/lang/String;

    iput-object v1, v0, Ljos;->s:Ljava/lang/String;

    .line 41
    iget v1, p2, Lcom/taobao/taolive/api/TaoLivePlayConfig;->mPlayerType:I

    iput v1, v0, Ljos;->a:I

    .line 42
    iget v1, p2, Lcom/taobao/taolive/api/TaoLivePlayConfig;->mScaleType:I

    iput v1, v0, Ljos;->d:I

    .line 43
    iget v1, p2, Lcom/taobao/taolive/api/TaoLivePlayConfig;->mRenderType:I

    iput v1, v0, Ljos;->c:I

    .line 44
    iget v1, p2, Lcom/taobao/taolive/api/TaoLivePlayConfig;->mScenarioType:I

    iput v1, v0, Ljos;->b:I

    .line 45
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v1, v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Ljos;)V

    .line 47
    .end local v0    # "liveConfig":Ljos;
    :cond_1
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d()Z

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mListener:Lcom/taobao/taolive/api/ITBLivePlayService$TaoLivePlayListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mListener:Lcom/taobao/taolive/api/ITBLivePlayService$TaoLivePlayListener;

    invoke-interface {v0}, Lcom/taobao/taolive/api/ITBLivePlayService$TaoLivePlayListener;->onComplete()V

    .line 144
    :cond_0
    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mListener:Lcom/taobao/taolive/api/ITBLivePlayService$TaoLivePlayListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mListener:Lcom/taobao/taolive/api/ITBLivePlayService$TaoLivePlayListener;

    invoke-interface {v0, p2, p3}, Lcom/taobao/taolive/api/ITBLivePlayService$TaoLivePlayListener;->onError(II)V

    .line 151
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mListener:Lcom/taobao/taolive/api/ITBLivePlayService$TaoLivePlayListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mListener:Lcom/taobao/taolive/api/ITBLivePlayService$TaoLivePlayListener;

    invoke-interface {v0}, Lcom/taobao/taolive/api/ITBLivePlayService$TaoLivePlayListener;->onStarted()V

    .line 159
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b()V

    .line 67
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 73
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 74
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 75
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 78
    :cond_0
    return-void
.end method

.method public seedTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(I)V

    .line 83
    :cond_0
    return-void
.end method

.method public setListener(Lcom/taobao/taolive/api/ITBLivePlayService$TaoLivePlayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/taobao/taolive/api/ITBLivePlayService$TaoLivePlayListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mListener:Lcom/taobao/taolive/api/ITBLivePlayService$TaoLivePlayListener;

    .line 53
    return-void
.end method

.method public setMuted(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setMuted(Z)V

    .line 115
    :cond_0
    return-void
.end method

.method public setScenarioType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setScenarioType(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 4
    .param p1, "msec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setTimeout(J)V

    .line 131
    :cond_0
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "left_volume"    # F
    .param p2, "right_volume"    # F

    .prologue
    .line 118
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(FF)V

    .line 120
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/services/LivePlayServiceImp;->mVideoView:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 63
    :cond_0
    return-void
.end method
