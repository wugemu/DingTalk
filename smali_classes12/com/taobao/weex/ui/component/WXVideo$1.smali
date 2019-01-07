.class Lcom/taobao/weex/ui/component/WXVideo$1;
.super Ljava/lang/Object;
.source "WXVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 69
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 73
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/taobao/weex/ui/component/WXVideo;->mPrepared:Z

    .line 78
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-static {v0, v3}, Lcom/taobao/weex/ui/component/WXVideo;->access$002(Lcom/taobao/weex/ui/component/WXVideo;Z)Z

    .line 80
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVideo;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "fail"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const-string/jumbo v1, "fail"

    const-string/jumbo v2, "stop"

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/ui/component/WXVideo;->access$100(Lcom/taobao/weex/ui/component/WXVideo;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    return v3
.end method
