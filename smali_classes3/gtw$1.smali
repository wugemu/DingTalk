.class final Lgtw$1;
.super Ljava/lang/Object;
.source "JobItemHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgtw;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgtw;


# direct methods
.method constructor <init>(Lgtw;)V
    .locals 0
    .param p1, "this$0"    # Lgtw;

    .prologue
    .line 110
    iput-object p1, p0, Lgtw$1;->a:Lgtw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 113
    iget-object v2, p0, Lgtw$1;->a:Lgtw;

    invoke-static {v2}, Lgtw;->a(Lgtw;)Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgtw$1;->a:Lgtw;

    invoke-static {v2}, Lgtw;->a(Lgtw;)Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getJobDetailURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    new-instance v1, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;-><init>()V

    .line 115
    .local v1, "params":Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;
    iget-object v2, p0, Lgtw$1;->a:Lgtw;

    invoke-static {v2}, Lgtw;->a(Lgtw;)Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getJobDetailURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->setPageUrl(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lgtw$1;->a:Lgtw;

    invoke-static {v2}, Lgtw;->a(Lgtw;)Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getIntroduceVideoURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->setVideoUrl(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lgtw$1;->a:Lgtw;

    invoke-static {v2}, Lgtw;->a(Lgtw;)Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getIntroduceVideoPosterURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->setVideoPosterUrl(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lgtw$1;->a:Lgtw;

    iget-boolean v2, v2, Lgtw;->B:Z

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lgtw$1;->a:Lgtw;

    iget-object v2, v2, Lgtw;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getConfig()Ljos;

    move-result-object v0

    .line 120
    .local v0, "config":Ljos;
    if-nez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->setToken(Ljava/lang/String;)V

    .line 122
    .end local v0    # "config":Ljos;
    :cond_0
    iget-object v2, p0, Lgtw$1;->a:Lgtw;

    iget-object v2, v2, Lgtw;->w:Landroid/app/Activity;

    iget-object v3, p0, Lgtw$1;->a:Lgtw;

    invoke-static {v3}, Lgtw;->a(Lgtw;)Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    move-result-object v3

    .line 1077
    if-eqz v2, :cond_1

    .line 1080
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1081
    const-string/jumbo v5, "video_play_params"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1082
    const-string/jumbo v5, "intent_key_job_info"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1083
    invoke-virtual {v2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 124
    .end local v1    # "params":Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;
    :cond_1
    return-void

    .line 120
    .restart local v0    # "config":Ljos;
    .restart local v1    # "params":Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;
    :cond_2
    iget-object v2, v0, Ljos;->n:Ljava/lang/String;

    goto :goto_0
.end method
