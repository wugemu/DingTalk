.class public Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;
.super Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;
.source "ResumeDetailActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

.field private h:Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;

.field private i:Landroid/view/View;

.field private j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

.field private k:Landroid/animation/ObjectAnimator;

.field private l:Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;

.field private m:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a()V

    .line 227
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-static {p0, v0}, Lgva;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 230
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;

    .prologue
    .line 35
    .line 3263
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->finish()V

    .line 3264
    const/4 v0, 0x0

    sget v1, Lgtt$a;->recruit_anim_push_bottom_out:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->overridePendingTransition(II)V

    .line 35
    return-void
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->k:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->b()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    invoke-virtual {v0}, Lguv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b()V

    .line 106
    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$1;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lguv;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 116
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->finish()V

    .line 270
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->c()V

    .line 271
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lgtt$e;->recruitment_activity_resume_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->setContentView(I)V

    .line 59
    sget v0, Lgtt$b;->pure_white:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 1119
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_resume_detail_params"

    invoke-static {v0, v1}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;

    .line 1123
    sget v0, Lgtt$d;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1124
    sget v0, Lgtt$d;->iv_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1125
    sget v0, Lgtt$d;->fl_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->c:Landroid/widget/FrameLayout;

    .line 1126
    sget v0, Lgtt$d;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->d:Landroid/widget/TextView;

    .line 1128
    sget v0, Lgtt$d;->swipe_webview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 1129
    sget v0, Lgtt$d;->ll_webview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->f:Landroid/widget/LinearLayout;

    .line 1131
    sget v0, Lgtt$d;->fl_draggable:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->h:Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;

    .line 1132
    sget v0, Lgtt$d;->view_draggable:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->i:Landroid/view/View;

    .line 1133
    sget v0, Lgtt$d;->v_video:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .line 1135
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->i:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v7, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->k:Landroid/animation/ObjectAnimator;

    .line 1136
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->k:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1140
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$2;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->h:Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$3;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->setListener(Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout$a;)V

    .line 1152
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$4;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->m:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 1166
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->m:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 1170
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;

    if-nez v0, :cond_1

    .line 1171
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->finish()V

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1175
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->isMosaicName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1176
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 1177
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Lgtt$c;->recruitment_icon_mosaic:I

    invoke-static {v1}, Leda;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1183
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->getResumeStudentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->isMosaicName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1185
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1186
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->c:Landroid/widget/FrameLayout;

    sget v1, Lgtt$c;->recruitment_title_mosaic:I

    invoke-static {v1}, Leda;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1233
    :goto_2
    invoke-static {p0}, Lgvc;->a(Landroid/content/Context;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 1235
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_2

    .line 1239
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1240
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1242
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setEnabled(Z)V

    .line 1243
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    new-array v1, v8, [I

    sget v2, Lgtt$b;->swipe_refresh_color1:I

    aput v2, v1, v4

    const/4 v2, 0x1

    sget v3, Lgtt$b;->swipe_refresh_color2:I

    aput v3, v1, v2

    sget v2, Lgtt$b;->swipe_refresh_color1:I

    aput v2, v1, v7

    const/4 v2, 0x3

    sget v3, Lgtt$b;->swipe_refresh_color2:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 1244
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$6;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 1259
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->getResumeDetailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->loadUrl(Ljava/lang/String;)V

    .line 1194
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->getResumeVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1195
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->h:Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->setVisibility(I)V

    .line 1197
    invoke-static {v5}, Lgva;->a(Lcma;)V

    .line 1199
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1201
    invoke-static {}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getDefaultConfig()Lgvf;

    move-result-object v0

    .line 2025
    iput-boolean v4, v0, Lgvf;->b:Z

    .line 2033
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lgvf;->d:F

    .line 2041
    iget-object v1, v0, Lgvf;->a:Ljos;

    .line 1204
    if-eqz v1, :cond_3

    .line 3041
    iget-object v1, v0, Lgvf;->a:Ljos;

    .line 1205
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->getToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljos;->n:Ljava/lang/String;

    .line 1207
    :cond_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Lgvf;)V

    .line 1208
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->getResumeVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 1210
    invoke-static {p0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    invoke-virtual {v0}, Lguv;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1211
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->b()V

    goto/16 :goto_0

    .line 1179
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 1180
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->getResumeStudentName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->l:Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/recruitment/nav/NavResumeDetailParams;->getResumeStudentAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1188
    :cond_6
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1189
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1212
    :cond_7
    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    invoke-virtual {v0}, Lguv;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    invoke-static {}, Lguv;->a()Lguv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity$5;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;)V

    invoke-virtual {v0, p0, v1, v5}, Lguv;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 1221
    :cond_8
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->h:Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1135
    nop

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
    .line 86
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->m:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->m:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->c()V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->b()V

    .line 93
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleDestroy()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onDestroy()V

    .line 99
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handlePause()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    .line 72
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onPause()V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->g:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleResume()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->j:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeDetailActivity;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    .line 82
    return-void
.end method
