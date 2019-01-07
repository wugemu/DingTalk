.class public Ltv/danmaku/ijk/media/player/NativeMediaPlayer;
.super Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;
.source "NativeMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/danmaku/ijk/media/player/NativeMediaPlayer$OnSeekCompleteListener;
    }
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnError:Z

    .line 26
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->initPlayer()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnError:Z

    .line 31
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->initPlayer()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljjq;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configAdapter"    # Ljjq;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/player/MonitorMediaPlayer;-><init>(Landroid/content/Context;Ljjq;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnError:Z

    .line 36
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->initPlayer()V

    .line 37
    return-void
.end method

.method private initPlayer()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 41
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 42
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 43
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 44
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 45
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 46
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 47
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 165
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 168
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    .line 176
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoSarDen()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 255
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v1, p0, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    .line 257
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnBufferingUpdateListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnBufferingUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 259
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
    invoke-interface {v0, p0, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    goto :goto_0

    .line 262
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
    :cond_1
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 232
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorComplete()V

    .line 233
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->bLooping:Z

    if-eqz v1, :cond_2

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->bSeeked:Z

    .line 235
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnLoopCompletionListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnLoopCompletionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;

    .line 237
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;
    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;->onLoopCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_0

    .line 240
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnLoopCompletionListener;
    :cond_0
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->start()V

    .line 251
    :cond_1
    return-void

    .line 243
    :cond_2
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    if-eqz v1, :cond_3

    .line 244
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 245
    :cond_3
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnCompletionListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnCompletionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 247
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_1
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 278
    iget-boolean v2, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnError:Z

    if-eqz v2, :cond_1

    .line 291
    :cond_0
    return v0

    .line 280
    :cond_1
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnError:Z

    .line 281
    invoke-virtual {p0, p2, p3}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorError(II)V

    .line 282
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorPlayExperience()V

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "bRes":Z
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    if-eqz v2, :cond_2

    .line 285
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v2, p0, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result v0

    .line 286
    :cond_2
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnErrorListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnErrorListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 288
    .local v1, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    invoke-interface {v1, p0, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result v0

    .line 289
    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 11
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 296
    const/16 v1, 0x2bd

    if-ne p2, v1, :cond_2

    .line 297
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorBufferStart()V

    .line 303
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 304
    .local v9, "bRes":Z
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v1, :cond_1

    .line 305
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    int-to-long v2, p2

    int-to-long v4, p3

    move-object v1, p0

    invoke-interface/range {v0 .. v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    move-result v9

    .line 306
    :cond_1
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 307
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 308
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    int-to-long v2, p2

    int-to-long v4, p3

    move-object v1, p0

    invoke-interface/range {v0 .. v8}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z

    move-result v9

    .line 309
    goto :goto_1

    .line 298
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .end local v9    # "bRes":Z
    :cond_2
    const/16 v1, 0x2be

    if-ne p2, v1, :cond_3

    .line 299
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorBufferEnd()V

    goto :goto_0

    .line 300
    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 301
    invoke-virtual {p0, v6, v7}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorRenderStart(J)V

    goto :goto_0

    .line 311
    .restart local v9    # "bRes":Z
    :cond_4
    return v9
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 220
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorPrepared(J)V

    .line 221
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 223
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnPreparedListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnPreparedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 225
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_0

    .line 228
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    :cond_1
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 326
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnSeekCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnSeekCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;

    invoke-interface {v1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;->onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 328
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnSeekCompletionListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnSeekCompletionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;

    .line 330
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;
    invoke-interface {v0, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;->onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_0

    .line 333
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompletionListener;
    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 266
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v1, :cond_0

    .line 267
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnVideoSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V

    .line 269
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnVideoSizeChangedListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnVideoSizeChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, v4

    .line 271
    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V

    goto :goto_0

    .line 274
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorPause()V

    .line 110
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 112
    :cond_0
    return-void
.end method

.method public prepareAsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mOnError:Z

    .line 86
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorPrepare()V

    .line 87
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 89
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorPlayExperience()V

    .line 183
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorRelease()V

    .line 184
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 186
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorPlayExperience()V

    .line 192
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorReset()V

    .line 193
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 195
    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "msec"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorSeek()V

    .line 159
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .param p1, "streamtype"    # I

    .prologue
    .line 205
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 208
    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorDataSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "url":Ljava/lang/String;
    iget-object v5, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 61
    const-string/jumbo v5, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 63
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ljok;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "userAgent":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 66
    const-string/jumbo v5, "User-Agent"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    :try_start_0
    iget-object v5, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mCdnIp:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->isUseVideoCache()Z

    move-result v5

    if-nez v5, :cond_1

    .line 69
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "host":Ljava/lang/String;
    iget-object v5, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mCdnIp:Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 72
    const-string/jumbo v5, "Host"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "host":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v5, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 80
    .end local v0    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "userAgent":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 78
    :cond_3
    iget-object v5, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    .restart local v0    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 52
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 55
    :cond_0
    return-void
.end method

.method public final setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/NativeMediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Ltv/danmaku/ijk/media/player/NativeMediaPlayer$OnSeekCompleteListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 119
    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 212
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 213
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 216
    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 199
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 202
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->monitorStart()V

    .line 95
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 97
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/NativeMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 104
    :cond_0
    return-void
.end method
