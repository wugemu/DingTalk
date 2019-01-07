.class final Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$2;
.super Ljava/lang/Object;
.source "ResumeFeedActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z
    .locals 6
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "info"    # J
    .param p4, "l1"    # J
    .param p6, "l2"    # J
    .param p8, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 176
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v4

    .line 179
    :cond_1
    const-wide/16 v2, 0x3

    cmp-long v1, p2, v2

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lguc;

    .line 181
    .local v0, "resumeFeedHolder":Lguc;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lguc;->i()V

    goto :goto_0
.end method
