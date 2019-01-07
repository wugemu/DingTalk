.class final Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$4;
.super Ljava/lang/Object;
.source "JobDetailActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

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
    const/4 v5, 0x0

    .line 177
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v5

    .line 181
    :cond_1
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getVideoWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getVideoHeight()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lgva;->a(Landroid/content/Context;Landroid/view/View;III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
