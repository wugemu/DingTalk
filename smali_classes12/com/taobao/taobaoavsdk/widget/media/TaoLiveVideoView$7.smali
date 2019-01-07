.class final Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;
.super Ljava/lang/Object;
.source "TaoLiveVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;


# direct methods
.method constructor <init>(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 449
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v2, v2, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v2, v2, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    .line 451
    :cond_0
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljoj;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Ljoj;->e:I

    .line 453
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->g(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 454
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->g(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljoj;

    move-result-object v3

    iget-object v3, v3, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-interface {v2, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 456
    :cond_1
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->h(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 457
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->h(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 458
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    if-eqz v0, :cond_2

    .line 459
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljoj;

    move-result-object v3

    iget-object v3, v3, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-interface {v0, v3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    goto :goto_0

    .line 463
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    :cond_3
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget v1, v2, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->r:I

    .line 464
    .local v1, "seekToPosition":I
    if-eqz v1, :cond_4

    .line 465
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v2, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(I)V

    .line 468
    :cond_4
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget v2, v2, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->i:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 469
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$7;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 471
    :cond_5
    return-void
.end method
