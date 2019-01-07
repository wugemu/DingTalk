.class final Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView$1;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 391
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 400
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 393
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;Z)V

    goto :goto_0

    .line 396
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->a(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;)V

    .line 397
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView$1;->a:Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;->b(Lcom/alibaba/android/dingtalkim/video/play/VideoPlayerView;)V

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
