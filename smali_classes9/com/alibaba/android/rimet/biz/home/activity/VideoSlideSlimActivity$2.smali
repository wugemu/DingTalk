.class final Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity$2;
.super Ljava/lang/Object;
.source "VideoSlideSlimActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;->b(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;)Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;->b(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;)Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    move-result-object v0

    .line 1702
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->e()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;->b(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideSlimActivity;)Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->start()V

    .line 74
    return-void
.end method
