.class public abstract Lgua;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecruitVideoBaseHolder.java"


# instance fields
.field A:Landroid/widget/ImageView;

.field B:Z

.field private a:Lgud;

.field private b:Landroid/support/v4/widget/ContentLoadingProgressBar;

.field private c:Landroid/widget/ImageView;

.field private d:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private e:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private f:Landroid/view/animation/AlphaAnimation;

.field w:Landroid/app/Activity;

.field x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

.field y:Lcom/alibaba/doraemon/image/ImageMagician;

.field z:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "videoView"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;
    .param p4, "absorberController"    # Lgud;
    .param p5, "onInfoListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .param p6, "onErrorListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .prologue
    .line 54
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 55
    iput-object p1, p0, Lgua;->w:Landroid/app/Activity;

    .line 56
    iput-object p3, p0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .line 57
    iput-object p4, p0, Lgua;->a:Lgud;

    .line 58
    iput-object p5, p0, Lgua;->d:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 59
    iput-object p6, p0, Lgua;->e:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 60
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lgua;->y:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 62
    sget v0, Lgtt$d;->fl_video:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lgua;->z:Landroid/widget/FrameLayout;

    .line 63
    sget v0, Lgtt$d;->iv_poster:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgua;->A:Landroid/widget/ImageView;

    .line 64
    sget v0, Lgtt$d;->pb_loading:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/ContentLoadingProgressBar;

    iput-object v0, p0, Lgua;->b:Landroid/support/v4/widget/ContentLoadingProgressBar;

    .line 65
    sget v0, Lgtt$d;->iv_start:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgua;->c:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lgua;->c:Landroid/widget/ImageView;

    new-instance v1, Lgua$1;

    invoke-direct {v1, p0}, Lgua$1;-><init>(Lgua;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method static synthetic a(Lgua;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lgua;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lgua;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-virtual {p0}, Lgua;->l()V

    .line 133
    invoke-virtual {p0}, Lgua;->f()V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgua;->B:Z

    .line 136
    invoke-virtual {p0}, Lgua;->d()V

    .line 137
    iget-object v0, p0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a()V

    .line 139
    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 209
    iget-object v0, p0, Lgua;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lgua;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public a(Z)V
    .locals 5
    .param p1, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 99
    invoke-virtual {p0}, Lgua;->a()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p0}, Lgua;->k()V

    .line 102
    invoke-virtual {p0}, Lgua;->g()V

    .line 103
    invoke-virtual {p0}, Lgua;->l()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    if-nez p1, :cond_2

    iget-object v1, p0, Lgua;->w:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->k(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v1

    invoke-virtual {v1}, Lguv;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    :cond_2
    invoke-direct {p0, v0}, Lgua;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_3
    iget-object v1, p0, Lgua;->w:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v1

    invoke-virtual {v1}, Lguv;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 114
    :cond_4
    invoke-virtual {p0}, Lgua;->k()V

    .line 115
    invoke-virtual {p0}, Lgua;->g()V

    .line 116
    invoke-direct {p0}, Lgua;->c()V

    goto :goto_0

    .line 118
    :cond_5
    invoke-virtual {p0}, Lgua;->k()V

    .line 119
    invoke-virtual {p0}, Lgua;->g()V

    .line 120
    invoke-direct {p0}, Lgua;->c()V

    .line 121
    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v1

    iget-object v2, p0, Lgua;->w:Landroid/app/Activity;

    new-instance v3, Lgua$3;

    invoke-direct {v3, p0, v0}, Lgua$3;-><init>(Lgua;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lguv;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lgua;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lgua;->k()V

    .line 166
    invoke-virtual {p0}, Lgua;->g()V

    .line 167
    invoke-virtual {p0}, Lgua;->l()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgua;->B:Z

    .line 170
    invoke-virtual {p0}, Lgua;->e()V

    .line 171
    iget-object v0, p0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->c()V

    .line 172
    iget-object v0, p0, Lgua;->a:Lgud;

    invoke-interface {v0}, Lgud;->d()V

    goto :goto_0
.end method

.method protected d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 221
    iget-object v0, p0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lgua;->d:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 223
    iget-object v0, p0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lgua;->e:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 225
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 228
    iget-object v0, p0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lgua;->d:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 230
    iget-object v0, p0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lgua;->e:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 232
    :cond_0
    return-void
.end method

.method f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 197
    iget-object v0, p0, Lgua;->b:Landroid/support/v4/widget/ContentLoadingProgressBar;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lgua;->b:Landroid/support/v4/widget/ContentLoadingProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V

    .line 200
    :cond_0
    return-void
.end method

.method g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 203
    iget-object v0, p0, Lgua;->b:Landroid/support/v4/widget/ContentLoadingProgressBar;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lgua;->b:Landroid/support/v4/widget/ContentLoadingProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 79
    invoke-virtual {p0}, Lgua;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lgua;->w:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgua;->w:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    invoke-virtual {v0}, Lguv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b()V

    .line 86
    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    iget-object v1, p0, Lgua;->w:Landroid/app/Activity;

    new-instance v2, Lgua$2;

    invoke-direct {v2, p0}, Lgua$2;-><init>(Lgua;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lguv;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 142
    .line 1186
    iget-object v0, p0, Lgua;->f:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 1187
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lgua;->f:Landroid/view/animation/AlphaAnimation;

    .line 1188
    iget-object v0, p0, Lgua;->f:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1190
    :cond_0
    iget-object v0, p0, Lgua;->f:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 1191
    iget-object v0, p0, Lgua;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1192
    iget-object v0, p0, Lgua;->A:Landroid/widget/ImageView;

    iget-object v1, p0, Lgua;->f:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    :cond_1
    invoke-virtual {p0}, Lgua;->g()V

    .line 144
    invoke-virtual {p0}, Lgua;->l()V

    .line 146
    iget-object v0, p0, Lgua;->a:Lgud;

    iget-object v1, p0, Lgua;->z:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lgud;->a(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lgua;->a:Lgud;

    invoke-interface {v0}, Lgud;->c()V

    .line 148
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lgua;->k()V

    .line 152
    invoke-virtual {p0}, Lgua;->g()V

    .line 153
    invoke-direct {p0}, Lgua;->c()V

    .line 155
    invoke-virtual {p0}, Lgua;->e()V

    .line 156
    iget-object v0, p0, Lgua;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->c()V

    .line 157
    iget-object v0, p0, Lgua;->a:Lgud;

    invoke-interface {v0}, Lgud;->d()V

    .line 158
    return-void
.end method

.method final k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 176
    iget-object v0, p0, Lgua;->f:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lgua;->f:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 179
    :cond_0
    iget-object v0, p0, Lgua;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lgua;->A:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 181
    iget-object v0, p0, Lgua;->A:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :cond_1
    return-void
.end method

.method final l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lgua;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lgua;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :cond_0
    return-void
.end method
