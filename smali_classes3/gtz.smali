.class public final Lgtz;
.super Lgua;
.source "OrgHomePageHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgtz$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;

.field c:Lgus;

.field d:Lgur;

.field e:Landroid/view/animation/AlphaAnimation;

.field private f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private g:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

.field private h:Lgtz$a;

.field private i:Lgue;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;Lgtz$a;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "vVideo"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;
    .param p4, "absorberController"    # Lgud;
    .param p5, "onInfoListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .param p6, "onErrorListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .param p7, "onCompletionListener"    # Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .param p8, "pbListener"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;
    .param p9, "orgHomePageHolderListener"    # Lgtz$a;

    .prologue
    .line 54
    invoke-direct/range {p0 .. p6}, Lgua;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 61
    sget v0, Lgtt$d;->ll_loading:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgtz;->a:Landroid/widget/LinearLayout;

    .line 62
    sget v0, Lgtt$d;->iv_logo_loading:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;

    iput-object v0, p0, Lgtz;->b:Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;

    .line 64
    iput-object p7, p0, Lgtz;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 65
    iput-object p8, p0, Lgtz;->g:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

    .line 66
    iput-object p9, p0, Lgtz;->h:Lgtz$a;

    .line 67
    return-void
.end method

.method static synthetic a(Lgtz;)Lgtz$a;
    .locals 1
    .param p0, "x0"    # Lgtz;

    .prologue
    .line 22
    iget-object v0, p0, Lgtz;->h:Lgtz$a;

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lgtz;->d:Lgur;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgtz;->d:Lgur;

    iget-object v0, v0, Lgur;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4
    .param p1, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lgtz;->d:Lgur;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lgtz;->d:Lgur;

    invoke-virtual {v0}, Lgur;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-super {p0, p1}, Lgua;->a(Z)V

    goto :goto_0

    .line 1178
    :cond_2
    iget-object v0, p0, Lgtz;->i:Lgue;

    if-eqz v0, :cond_4

    .line 1181
    iget-object v0, p0, Lgtz;->i:Lgue;

    .line 2028
    invoke-virtual {v0}, Lgue;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lgue;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 111
    :goto_1
    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lgtz;->l()V

    .line 116
    invoke-virtual {p0}, Lgtz;->f()V

    .line 117
    invoke-virtual {p0}, Lgtz;->k()V

    .line 2146
    iget-object v0, p0, Lgtz;->i:Lgue;

    if-nez v0, :cond_3

    .line 2147
    new-instance v0, Lgue;

    invoke-direct {v0}, Lgue;-><init>()V

    iput-object v0, p0, Lgtz;->i:Lgue;

    .line 2148
    iget-object v0, p0, Lgtz;->i:Lgue;

    new-instance v1, Lgtz$1;

    invoke-direct {v1, p0}, Lgtz$1;-><init>(Lgtz;)V

    .line 3016
    iput-object v1, v0, Lgue;->a:Lgue$a;

    .line 2162
    iget-object v0, p0, Lgtz;->i:Lgue;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lgue;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2163
    iget-object v0, p0, Lgtz;->i:Lgue;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v2, v3}, Lgue;->setDuration(J)V

    .line 2165
    :cond_3
    iget-object v0, p0, Lgtz;->A:Landroid/widget/ImageView;

    iget-object v1, p0, Lgtz;->i:Lgue;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2028
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 124
    iget-object v0, p0, Lgtz;->d:Lgur;

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lgtz;->d:Lgur;

    invoke-virtual {v0}, Lgur;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-super {p0}, Lgua;->b()V

    goto :goto_0

    .line 3169
    :cond_1
    iget-object v0, p0, Lgtz;->i:Lgue;

    if-eqz v0, :cond_2

    .line 3172
    iget-object v0, p0, Lgtz;->i:Lgue;

    invoke-virtual {v0}, Lgue;->cancel()V

    .line 3173
    iget-object v0, p0, Lgtz;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 3174
    iget-object v0, p0, Lgtz;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 132
    :cond_2
    invoke-virtual {p0}, Lgtz;->l()V

    .line 133
    invoke-virtual {p0}, Lgtz;->g()V

    .line 134
    invoke-virtual {p0}, Lgtz;->k()V

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lgtz;->d:Lgur;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgtz;->d:Lgur;

    invoke-virtual {v0}, Lgur;->a()Z

    move-result v0

    goto :goto_0
.end method

.method protected final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 185
    invoke-super {p0}, Lgua;->d()V

    .line 186
    iget-object v0, p0, Lgtz;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lgtz;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 187
    iget-object v0, p0, Lgtz;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lgtz;->g:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->setPbListener(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;)V

    .line 188
    return-void
.end method

.method protected final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 192
    invoke-super {p0}, Lgua;->e()V

    .line 193
    iget-object v0, p0, Lgtz;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lgtz;->f:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 194
    iget-object v0, p0, Lgtz;->x:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->setPbListener(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;)V

    .line 195
    return-void
.end method

.method final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 199
    iget-object v0, p0, Lgtz;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lgtz;->e:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lgtz;->e:Landroid/view/animation/AlphaAnimation;

    .line 202
    iget-object v0, p0, Lgtz;->e:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 203
    iget-object v0, p0, Lgtz;->e:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 204
    iget-object v0, p0, Lgtz;->e:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 206
    :cond_0
    iget-object v0, p0, Lgtz;->b:Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;

    iget-object v1, p0, Lgtz;->e:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RoundedImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    return-void
.end method

.method final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 211
    iget-object v0, p0, Lgtz;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lgtz;->e:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lgtz;->e:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 215
    :cond_0
    return-void
.end method
