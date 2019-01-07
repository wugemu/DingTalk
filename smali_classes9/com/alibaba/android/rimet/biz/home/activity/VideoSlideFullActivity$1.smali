.class final Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity$1;
.super Ljava/lang/Object;
.source "VideoSlideFullActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;I)I

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideFullActivity;)Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/rimet/video/controller/DdFullMediaPlayerController;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 77
    return-void
.end method
