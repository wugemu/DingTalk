.class final Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$3;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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
    .line 299
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 7
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 302
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->d(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)Ljava/lang/String;

    move-result-object v3

    .line 1058
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1059
    const-string/jumbo v5, "code"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    const-string/jumbo v0, "reason"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    const-string/jumbo v0, "uuid"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    const-string/jumbo v0, "liveUrl"

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const/16 v0, 0x1772

    const-string/jumbo v1, "Live Replay Failed"

    invoke-static {v0, v1, v4}, Lbyo;->a(ILjava/lang/String;Ljava/util/Map;)V

    .line 303
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Play error, what="

    aput-object v3, v2, v6

    const/4 v3, 0x1

    .line 304
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "extra="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 303
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/VideoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 306
    const/16 v0, -0x194

    if-ne p2, v0, :cond_0

    .line 307
    sget v0, Lbtp$g;->dt_lv_replay_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 309
    :cond_0
    return v6
.end method
