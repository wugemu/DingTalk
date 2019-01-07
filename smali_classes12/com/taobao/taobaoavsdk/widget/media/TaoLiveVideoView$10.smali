.class final Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;
.super Ljava/lang/Object;
.source "TaoLiveVideoView.java"

# interfaces
.implements Ljoq$a;


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
    .line 1478
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljoq$b;)V
    .locals 3
    .param p1, "holder"    # Ljoq$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1502
    invoke-interface {p1}, Ljoq$b;->a()Ljoq;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    if-eq v0, v1, :cond_1

    .line 1503
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    const-string/jumbo v1, "AVSDK"

    const-string/jumbo v2, "onSurfaceCreated: unmatched render callback\n"

    invoke-interface {v0, v1, v2}, Ljju;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    :cond_0
    :goto_0
    return-void

    .line 1508
    :cond_1
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iput-object p1, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->j:Ljoq$b;

    .line 1509
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljoj;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljoj;

    move-result-object v0

    iget-object v0, v0, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    if-eqz v0, :cond_2

    .line 1510
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljoj;

    move-result-object v1

    iget-object v1, v1, Ljoj;->f:Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;

    invoke-static {v0, v1, p1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljoq$b;)V

    .line 1512
    :cond_2
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->o(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->o(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;->a()V

    goto :goto_0
.end method

.method public final b(Ljoq$b;)V
    .locals 3
    .param p1, "holder"    # Ljoq$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1481
    invoke-interface {p1}, Ljoq$b;->a()Ljoq;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    if-eq v0, v1, :cond_1

    .line 1482
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    const-string/jumbo v1, "AVSDK"

    const-string/jumbo v2, "onSurfaceChanged: unmatched render callback\n"

    invoke-interface {v0, v1, v2}, Ljju;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    :cond_0
    :goto_0
    return-void

    .line 1487
    :cond_1
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iput-object p1, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->j:Ljoq$b;

    goto :goto_0
.end method

.method public final c(Ljoq$b;)V
    .locals 3
    .param p1, "holder"    # Ljoq$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1519
    invoke-interface {p1}, Ljoq$b;->a()Ljoq;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a:Ljoq;

    if-eq v0, v1, :cond_1

    .line 1520
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    const-string/jumbo v1, "AVSDK"

    const-string/jumbo v2, "onSurfaceDestroyed: unmatched render callback\n"

    invoke-interface {v0, v1, v2}, Ljju;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    :cond_0
    :goto_0
    return-void

    .line 1526
    :cond_1
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v1, v1, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->j:Ljoq$b;

    invoke-static {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;Ljoq$b;)V

    .line 1527
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->j:Ljoq$b;

    .line 1528
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->o(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$10;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->o(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;

    goto :goto_0
.end method
