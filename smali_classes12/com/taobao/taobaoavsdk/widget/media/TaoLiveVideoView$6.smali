.class final Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$6;
.super Ljava/lang/Object;
.source "TaoLiveVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;


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
    .line 435
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$6;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 3
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "percent"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 437
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$6;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iput p2, v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->s:I

    .line 438
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$6;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$6;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 440
    .local v0, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
    if-eqz v0, :cond_0

    .line 441
    iget-object v2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$6;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljoj;

    move-result-object v2

    iget-object v2, v2, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-interface {v0, v2, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    goto :goto_0

    .line 444
    .end local v0    # "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
    :cond_1
    return-void
.end method
