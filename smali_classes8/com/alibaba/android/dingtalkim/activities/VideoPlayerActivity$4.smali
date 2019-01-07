.class final Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$4;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0}, Lcms;->c(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    if-eqz p1, :cond_0

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 196
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method
