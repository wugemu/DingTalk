.class final Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$4;
.super Ljava/lang/Object;
.source "ResumeDetailActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z
    .locals 4
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "info"    # J
    .param p4, "l1"    # J
    .param p6, "l2"    # J
    .param p8, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v2

    .line 158
    :cond_1
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    move-result-object v1

    invoke-static {v0, v1}, Lgva;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
