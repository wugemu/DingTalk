.class final Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$6;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$6;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$6;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->f(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->setKeepScreenOn(Z)V

    .line 341
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$6;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    return-void
.end method
