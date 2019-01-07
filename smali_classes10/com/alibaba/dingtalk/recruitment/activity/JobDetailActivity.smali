.class public Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;
.super Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;
.source "JobDetailActivity.java"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private f:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout;

.field private g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

.field private h:Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;

.field private i:Landroid/view/View;

.field private j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

.field private k:Landroid/animation/ObjectAnimator;

.field private l:Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;

.field private m:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

.field private n:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->k:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a()V

    .line 284
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getVideoHeight()I

    move-result v2

    const/4 v3, 0x2

    invoke-static {p0, v0, v1, v2, v3}, Lgva;->a(Landroid/content/Context;Landroid/view/View;III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 287
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    .prologue
    const/4 v3, 0x0

    .line 42
    .line 4223
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 4224
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getCoreView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->a:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 4238
    :cond_0
    :goto_0
    return-void

    .line 4229
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 4230
    cmpg-float v1, v0, v3

    if-lez v1, :cond_0

    .line 4234
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getCoreView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    .line 4235
    cmpg-float v2, v1, v3

    if-gtz v2, :cond_2

    .line 4236
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 4237
    :cond_2
    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    .line 4238
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->c:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 4240
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->c:Landroid/widget/TextView;

    div-float v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->b()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    invoke-virtual {v0}, Lguv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b()V

    .line 128
    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$1;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lguv;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 138
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->finish()V

    .line 103
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->c()V

    .line 104
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v0, Lgtt$e;->recruitment_activity_job_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->setContentView(I)V

    .line 67
    sget v0, Lgtt$b;->pure_white:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 1141
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "video_play_params"

    invoke-static {v0, v1}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;

    .line 1142
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_job_info"

    invoke-static {v0, v1}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->m:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    .line 1146
    sget v0, Lgtt$d;->rl_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->a:Landroid/widget/RelativeLayout;

    .line 1147
    sget v0, Lgtt$d;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1148
    sget v0, Lgtt$d;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->c:Landroid/widget/TextView;

    .line 1149
    sget v0, Lgtt$d;->tv_action_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->d:Landroid/widget/TextView;

    .line 1150
    sget v0, Lgtt$d;->swipe_webview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 1151
    sget v0, Lgtt$d;->ll_webview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->f:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout;

    .line 1153
    sget v0, Lgtt$d;->fl_draggable:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->h:Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;

    .line 1154
    sget v0, Lgtt$d;->view_draggable:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->i:Landroid/view/View;

    .line 1155
    sget v0, Lgtt$d;->v_video:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .line 1157
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->i:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->k:Landroid/animation/ObjectAnimator;

    .line 1158
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->k:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1162
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$2;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1168
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->h:Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$3;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->setListener(Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout$a;)V

    .line 1174
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$4;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->n:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 1189
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->n:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 1190
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->f:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout;->setOnInterceptListener(Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout$a;)V

    .line 1210
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_job_detail_share"

    .line 2083
    invoke-virtual {v0, v1, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1210
    if-eqz v0, :cond_5

    .line 1211
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$6;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2245
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;

    if-eqz v0, :cond_4

    .line 2249
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->m:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->m:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getJobTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->m:Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/recruitment/data/object/JobInfoObject;->getJobTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2251
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2290
    :cond_0
    invoke-static {p0}, Lgvc;->a(Landroid/content/Context;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 2291
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_1

    .line 2295
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 2296
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    sget v2, Lgtt$b;->swipe_refresh_color1:I

    aput v2, v1, v4

    sget v2, Lgtt$b;->swipe_refresh_color2:I

    aput v2, v1, v7

    sget v2, Lgtt$b;->swipe_refresh_color1:I

    aput v2, v1, v8

    const/4 v2, 0x3

    sget v3, Lgtt$b;->swipe_refresh_color2:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 2298
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2299
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->f:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2301
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$8;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 2315
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->loadUrl(Ljava/lang/String;)V

    .line 2256
    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->a(Ljava/lang/Runnable;)V

    .line 2258
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2260
    invoke-static {}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getDefaultConfig()Lgvf;

    move-result-object v0

    .line 3025
    iput-boolean v4, v0, Lgvf;->b:Z

    .line 3033
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lgvf;->d:F

    .line 3041
    iget-object v1, v0, Lgvf;->a:Ljos;

    .line 2263
    if-eqz v1, :cond_2

    .line 4041
    iget-object v1, v0, Lgvf;->a:Ljos;

    .line 2264
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->getToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljos;->n:Ljava/lang/String;

    .line 2266
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Lgvf;)V

    .line 2268
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/recruitment/base/VideoPlayParams;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 2270
    invoke-static {p0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    invoke-virtual {v0}, Lguv;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2271
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->b()V

    :cond_4
    :goto_1
    return-void

    .line 1218
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2272
    :cond_6
    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    invoke-virtual {v0}, Lguv;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2273
    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$7;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lguv;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 1157
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->n:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->n:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->c()V

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->b()V

    .line 115
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleDestroy()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onDestroy()V

    .line 121
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->finish()V

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handlePause()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    .line 88
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onPause()V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onResume()V

    .line 94
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleResume()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    .line 98
    return-void
.end method
