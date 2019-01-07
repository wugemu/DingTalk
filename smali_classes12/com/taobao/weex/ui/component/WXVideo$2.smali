.class Lcom/taobao/weex/ui/component/WXVideo$2;
.super Ljava/lang/Object;
.source "WXVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXVideo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXVideo;

.field final synthetic val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXVideo;Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXVideo;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string/jumbo v1, "Video"

    const-string/jumbo v2, "onPrepared"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/taobao/weex/ui/component/WXVideo;->mPrepared:Z

    .line 96
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXVideo;->access$200(Lcom/taobao/weex/ui/component/WXVideo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->start()V

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getVideoView()Lcom/taobao/weex/ui/view/WXVideoView;

    move-result-object v0

    .line 102
    .local v0, "videoView":Lcom/taobao/weex/ui/view/WXVideoView;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXVideoView;->seekTo(I)V

    .line 104
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getMediaController()Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXVideo;->access$300(Lcom/taobao/weex/ui/component/WXVideo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getMediaController()Landroid/widget/MediaController;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    .line 112
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taobao/weex/ui/component/WXVideo;->access$302(Lcom/taobao/weex/ui/component/WXVideo;Z)Z

    .line 113
    return-void

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getMediaController()Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    goto :goto_0
.end method
