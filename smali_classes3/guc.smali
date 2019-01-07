.class public final Lguc;
.super Lgua;
.source "ResumeFeedHolder.java"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/LinearLayout;

.field c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field d:Landroid/widget/RelativeLayout;

.field e:Landroid/widget/TextView;

.field f:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

.field g:Lguq;

.field h:Landroid/view/animation/AlphaAnimation;

.field private i:Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

.field private j:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "resumeFeedFloatContainer"    # Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;
    .param p4, "vVideo"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;
    .param p5, "absorberController"    # Lgud;
    .param p6, "onInfoListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .param p7, "onErrorListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .param p8, "resumeIntroViewListener"    # Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lgua;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 61
    iput-object p2, p0, Lguc;->a:Landroid/view/View;

    .line 62
    iput-object p3, p0, Lguc;->i:Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

    .line 63
    iput-object p8, p0, Lguc;->j:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;

    .line 65
    sget v0, Lgtt$d;->ll_loading:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lguc;->b:Landroid/widget/LinearLayout;

    .line 66
    sget v0, Lgtt$d;->view_avatar_loading:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lguc;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 67
    sget v0, Lgtt$d;->rl_mysterious:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lguc;->d:Landroid/widget/RelativeLayout;

    .line 68
    sget v0, Lgtt$d;->tv_mysterious:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lguc;->e:Landroid/widget/TextView;

    .line 69
    sget v0, Lgtt$d;->v_resume_intro:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    iput-object v0, p0, Lguc;->f:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    .line 70
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lguc;->g:Lguq;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lguc;->g:Lguq;

    .line 1079
    iget-object v0, v0, Lguq;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lguc;->g:Lguq;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lguc;->f:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lguc;->f:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    iget-object v1, p0, Lguc;->j:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->setListener(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;)V

    .line 139
    :cond_1
    iget-object v0, p0, Lguc;->i:Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lguc;->i:Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;->getVResumeIntro()Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lguc;->i:Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;->getVResumeIntro()Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    move-result-object v0

    iget-object v1, p0, Lguc;->j:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->setListener(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;)V

    .line 141
    iget-object v0, p0, Lguc;->i:Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;->getVResumeIntro()Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    move-result-object v0

    iget-object v1, p0, Lguc;->g:Lguq;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->a(Lguq;)V

    .line 144
    :cond_2
    invoke-super {p0, p1}, Lgua;->a(Z)V

    goto :goto_0
.end method

.method final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 149
    iget-object v0, p0, Lguc;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lguc;->h:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lguc;->h:Landroid/view/animation/AlphaAnimation;

    .line 152
    iget-object v0, p0, Lguc;->h:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 153
    iget-object v0, p0, Lguc;->h:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 154
    iget-object v0, p0, Lguc;->h:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 156
    :cond_0
    iget-object v0, p0, Lguc;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lguc;->h:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 157
    return-void
.end method

.method final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 161
    iget-object v0, p0, Lguc;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lguc;->h:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lguc;->h:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 165
    :cond_0
    return-void
.end method
