.class final Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$4;
.super Ljava/lang/Object;
.source "ResumeFeedActivity.java"

# interfaces
.implements Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;


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
    .line 202
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lguq;

    .line 210
    .local v9, "resumeObject":Lguq;
    if-eqz v9, :cond_0

    .line 214
    new-instance v7, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;

    invoke-direct {v7}, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;-><init>()V

    .line 1043
    .local v7, "builder":Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;
    iget-boolean v0, v9, Lguq;->b:Z

    .line 1071
    iput-boolean v0, v7, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;->a:Z

    .line 1095
    iget-object v0, v9, Lguq;->k:Ljava/lang/String;

    .line 2076
    iput-object v0, v7, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;->b:Ljava/lang/String;

    .line 3039
    iget-object v0, v9, Lguq;->a:Ljava/lang/String;

    .line 3081
    iput-object v0, v7, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;->c:Ljava/lang/String;

    .line 3091
    iget-object v0, v9, Lguq;->j:Ljava/lang/String;

    .line 4086
    iput-object v0, v7, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;->d:Ljava/lang/String;

    .line 5079
    iget-object v0, v9, Lguq;->h:Ljava/lang/String;

    .line 5091
    iput-object v0, v7, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;->e:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->d(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getConfig()Ljos;

    move-result-object v8

    .line 221
    .local v8, "config":Ljos;
    if-nez v8, :cond_2

    const/4 v0, 0x0

    .line 5096
    :goto_1
    iput-object v0, v7, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;->f:Ljava/lang/String;

    .line 222
    iget-object v10, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .line 5101
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;

    iget-boolean v1, v7, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;->a:Z

    iget-object v2, v7, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;->b:Ljava/lang/String;

    iget-object v3, v7, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;->c:Ljava/lang/String;

    iget-object v4, v7, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;->d:Ljava/lang/String;

    iget-object v5, v7, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;->e:Ljava/lang/String;

    iget-object v6, v7, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams$a;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6039
    if-eqz v10, :cond_0

    .line 6043
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 6044
    const-class v2, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;

    invoke-virtual {v1, v10, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6045
    const-string/jumbo v2, "intent_key_resume_detail_params"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6046
    invoke-virtual {v10, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6047
    sget v0, Lgtt$a;->recruit_anim_push_bottom_in:I

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, v8, Ljos;->n:Ljava/lang/String;

    goto :goto_1
.end method
