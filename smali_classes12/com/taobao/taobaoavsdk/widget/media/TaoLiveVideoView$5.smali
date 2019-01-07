.class final Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;
.super Ljava/lang/Object;
.source "TaoLiveVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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
    .line 406
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 6
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "player onError, framework_err: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", impl_err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "error_log":Ljava/lang/String;
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    if-eqz v3, :cond_0

    .line 410
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    const-string/jumbo v4, "AVSDK"

    invoke-interface {v3, v4, v0}, Ljju;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_0
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljoj;

    move-result-object v3

    iput v5, v3, Ljoj;->e:I

    .line 412
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iput v5, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->i:I

    .line 414
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget-boolean v3, v3, Ljos;->l:Z

    if-eqz v3, :cond_1

    .line 415
    invoke-static {}, Ljoi;->a()Ljoi;

    invoke-static {}, Ljoi;->b()V

    .line 417
    :cond_1
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 418
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->d(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljoj;

    move-result-object v4

    iget-object v4, v4, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-interface {v3, v4, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 430
    :cond_2
    return v2

    .line 422
    :cond_3
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 423
    const/4 v2, 0x0

    .line 424
    .local v2, "res":Z
    iget-object v3, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->e(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 425
    .local v1, "listener":Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    iget-object v4, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$5;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v4}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljoj;

    move-result-object v4

    iget-object v4, v4, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-interface {v1, v4, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result v2

    .line 426
    goto :goto_0
.end method
