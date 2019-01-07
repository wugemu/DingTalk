.class final Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;
.super Ljava/lang/Object;
.source "TaoLiveVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

.field final synthetic b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;


# direct methods
.method constructor <init>(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;Ltv/danmaku/ijk/media/player/IjkMediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 878
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iput-object p2, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V

    .line 884
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    if-eqz v0, :cond_2

    .line 887
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;->a:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    .line 889
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    if-eqz v0, :cond_3

    .line 890
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$9;->b:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v0, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->f:Ljju;

    .line 891
    :cond_3
    return-void
.end method
