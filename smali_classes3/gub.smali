.class public final Lgub;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ResumeFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lguc;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lguq;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

.field private d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

.field private e:Lgud;

.field private f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private g:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private h:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "resumeFeedFloatContainer"    # Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;
    .param p4, "vVideo"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;
    .param p5, "absorberController"    # Lgud;
    .param p6, "onInfoListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .param p7, "onErrorListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .param p8, "resumeIntroViewListener"    # Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lguq;",
            ">;",
            "Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;",
            "Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;",
            "Lgud;",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;",
            "Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "resumeObjects":Ljava/util/List;, "Ljava/util/List<Lguq;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Lgub;->a:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lgub;->b:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lgub;->c:Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

    .line 42
    iput-object p4, p0, Lgub;->d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .line 43
    iput-object p5, p0, Lgub;->e:Lgud;

    .line 44
    iput-object p6, p0, Lgub;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 45
    iput-object p7, p0, Lgub;->g:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 46
    iput-object p8, p0, Lgub;->h:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;

    .line 47
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lgub;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgub;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 20
    check-cast p1, Lguc;

    .line 2075
    iget-object v0, p0, Lgub;->b:Ljava/util/List;

    if-eqz v0, :cond_7

    if-ltz p2, :cond_7

    iget-object v0, p0, Lgub;->b:Ljava/util/List;

    .line 2077
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 2078
    iget-object v0, p0, Lgub;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lguq;

    .line 3073
    :goto_0
    iput-object v0, p1, Lguc;->g:Lguq;

    .line 3074
    iget-object v0, p1, Lguc;->g:Lguq;

    if-nez v0, :cond_0

    .line 3075
    iget-object v0, p1, Lguc;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3076
    :goto_1
    return-void

    .line 3079
    :cond_0
    iget-object v0, p1, Lguc;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3087
    iget-object v5, p1, Lguc;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v0, p1, Lguc;->g:Lguq;

    .line 4043
    iget-boolean v0, v0, Lguq;->b:Z

    .line 3088
    if-eqz v0, :cond_3

    const-string/jumbo v0, ""

    .line 5093
    :goto_2
    iget-object v2, p1, Lguc;->g:Lguq;

    if-nez v2, :cond_4

    move-object v2, v1

    .line 3087
    :goto_3
    invoke-virtual {v5, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7103
    iget-object v0, p1, Lguc;->y:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, p1, Lguc;->A:Landroid/widget/ImageView;

    iget-object v5, p1, Lguc;->g:Lguq;

    .line 8075
    iget-object v5, v5, Lguq;->g:Ljava/lang/String;

    .line 7103
    invoke-static {v5}, Lguz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 8107
    iget-object v1, p1, Lguc;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p1, Lguc;->g:Lguq;

    .line 9079
    iget-object v0, v0, Lguq;->h:Ljava/lang/String;

    .line 8107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8108
    iget-object v0, p1, Lguc;->e:Landroid/widget/TextView;

    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcms;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9112
    iget-object v0, p1, Lguc;->f:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    iget-object v1, p1, Lguc;->g:Lguq;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->a(Lguq;)V

    goto :goto_1

    .line 3088
    :cond_3
    iget-object v0, p1, Lguc;->g:Lguq;

    .line 5039
    iget-object v0, v0, Lguq;->a:Ljava/lang/String;

    goto :goto_2

    .line 5096
    :cond_4
    iget-object v2, p1, Lguc;->g:Lguq;

    .line 6095
    iget-object v2, v2, Lguq;->k:Ljava/lang/String;

    .line 5096
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5097
    iget-object v2, p1, Lguc;->g:Lguq;

    .line 7095
    iget-object v2, v2, Lguq;->k:Ljava/lang/String;

    goto :goto_3

    .line 5099
    :cond_5
    const-string/jumbo v2, "@lALPBbCc1euZvzg8PA"

    goto :goto_3

    :cond_6
    move v0, v4

    .line 8107
    goto :goto_4

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 20
    .line 10061
    iget-object v0, p0, Lgub;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lgtt$e;->recruitment_item_resume_feed:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 10062
    new-instance v0, Lguc;

    iget-object v1, p0, Lgub;->a:Landroid/app/Activity;

    iget-object v3, p0, Lgub;->c:Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;

    iget-object v4, p0, Lgub;->d:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v5, p0, Lgub;->e:Lgud;

    iget-object v6, p0, Lgub;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    iget-object v7, p0, Lgub;->g:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v8, p0, Lgub;->h:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;

    invoke-direct/range {v0 .. v8}, Lguc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/dingtalk/recruitment/widget/ResumeFeedFloatContainer;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;)V

    .line 20
    return-object v0
.end method

.method public final synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 20
    check-cast p1, Lguc;

    .line 1085
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1086
    if-eqz p1, :cond_0

    .line 1116
    iget-object v0, p1, Lguc;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1117
    iget-object v0, p1, Lguc;->h:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p1, Lguc;->h:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 20
    :cond_0
    return-void
.end method
