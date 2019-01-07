.class public Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;
.super Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;
.source "OrgHomePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;
    }
.end annotation


# instance fields
.field private A:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private B:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

.field private C:Lgtz$a;

.field private a:Landroid/view/View;

.field private b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

.field private f:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private h:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/LinearLayout;

.field private l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

.field private m:Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageVideoFloatContainer;

.field private n:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

.field private o:Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;

.field private p:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

.field private q:Landroid/view/View;

.field private r:Lgty;

.field private s:Lgud;

.field private t:Lgud;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgur;",
            ">;"
        }
    .end annotation
.end field

.field private x:I

.field private y:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private z:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->x:I

    .line 543
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 507
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->h:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->findFirstVisibleItemPosition()I

    move-result v0

    .line 508
    .local v0, "firstVisibleItemPosition":I
    sub-int v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 509
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->h:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    .line 522
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b()V

    .line 512
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->h:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    invoke-virtual {v1, p1}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->scrollToPosition(I)V

    .line 513
    iput p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->x:I

    .line 514
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->p:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    iget v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->x:I

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->setCurVideoPosition(I)V

    .line 515
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$4;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->x:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->x:I

    return p1
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 436
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->x:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lgtz;

    .line 437
    .local v0, "childViewHolder":Lgtz;
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Lgtz;->b()V

    .line 440
    :cond_0
    return-void
.end method

.method private c()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 525
    invoke-static {p0}, Lcms;->b(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcms;->a(Landroid/app/Activity;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->p:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->n:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    .line 5384
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->j:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5385
    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$2;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5404
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5405
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 62
    return-void

    .line 5384
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    const/16 v2, 0x8

    .line 62
    .line 5529
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5530
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5531
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->f:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->setVisibility(I)V

    .line 5532
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lgtt$b;->ui_common_level1_button_bg_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 5533
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5534
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    return-void
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    const/4 v2, 0x0

    .line 62
    .line 5538
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5539
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5540
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->f:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->setVisibility(I)V

    .line 62
    return-void
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lgty;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->r:Lgty;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    .line 6428
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->x:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lgtz;

    .line 6429
    if-eqz v0, :cond_0

    .line 6430
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgtz;->a(Z)V

    .line 6431
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->p:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a(F)V

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    .line 6613
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6616
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6620
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a(I)V

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->h:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->x:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lgtz;

    .line 162
    .local v0, "childViewHolder":Lgtz;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lgtz;->h()V

    .line 165
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/4 v4, -0x1

    const/4 v11, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    sget v0, Lgtt$e;->recruitment_activity_org_home_page:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->setContentView(I)V

    .line 113
    sget v0, Lgtt$b;->ui_common_content_fg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 1168
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "corpId"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->u:Ljava/lang/String;

    .line 1169
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->v:Ljava/lang/String;

    .line 1173
    sget v0, Lgtt$d;->fl_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    .line 1175
    sget v0, Lgtt$d;->v_scroll:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->f:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    .line 1177
    sget v0, Lgtt$d;->rl_scroll_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1178
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1179
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->c()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1180
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1182
    sget v0, Lgtt$d;->v_intro_absorber:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1183
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1184
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->c()I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1185
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    sget v0, Lgtt$d;->list_video:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    .line 1189
    sget v0, Lgtt$d;->rl_webview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->i:Landroid/widget/RelativeLayout;

    .line 1190
    sget v0, Lgtt$d;->v_webview_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->j:Landroid/view/View;

    .line 1191
    sget v0, Lgtt$d;->ll_webview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->k:Landroid/widget/LinearLayout;

    .line 1193
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageVideoFloatContainer;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageVideoFloatContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->m:Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageVideoFloatContainer;

    .line 1194
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->m:Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageVideoFloatContainer;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageVideoFloatContainer;->getVVideo()Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->n:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .line 1195
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->m:Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageVideoFloatContainer;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;-><init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->s:Lgud;

    .line 1196
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->s:Lgud;

    invoke-interface {v0}, Lgud;->a()V

    .line 1197
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->s:Lgud;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->f:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    invoke-interface {v0, v2}, Lgud;->b(Landroid/view/View;)V

    .line 1199
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->o:Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;

    .line 1200
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->o:Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;->getOrgIntroView()Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->p:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    .line 1201
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->p:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->setVisibility(I)V

    .line 1202
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->o:Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;

    sget-object v3, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;->ABSORB_Y:Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;

    invoke-direct {v0, p0, v2, v3}, Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController;-><init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;Lcom/alibaba/dingtalk/recruitment/adosorber/AbsorberController$MODE;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->t:Lgud;

    .line 1203
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->t:Lgud;

    invoke-interface {v0}, Lgud;->a()V

    .line 1204
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->t:Lgud;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->f:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    invoke-interface {v0, v2}, Lgud;->b(Landroid/view/View;)V

    .line 1205
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->t:Lgud;

    invoke-interface {v0, v1}, Lgud;->a(Landroid/view/View;)V

    .line 1206
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->t:Lgud;

    invoke-interface {v0}, Lgud;->c()V

    .line 1208
    invoke-static {p0}, Lgvb;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1209
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lgtt$e;->recruitment_layout_org_home_page_title:I

    invoke-virtual {v0, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a:Landroid/view/View;

    .line 1210
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a:Landroid/view/View;

    sget v1, Lgtt$d;->iv_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1211
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$1;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a:Landroid/view/View;

    sget v1, Lgtt$d;->tv_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->c:Landroid/widget/TextView;

    .line 1218
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$5;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1224
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a:Landroid/view/View;

    sget v1, Lgtt$d;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->d:Landroid/widget/TextView;

    .line 1225
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a:Landroid/view/View;

    sget v1, Lgtt$d;->rl_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1226
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1227
    invoke-static {p0}, Lcms;->a(Landroid/app/Activity;)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1228
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    invoke-static {p0}, Lgvb;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->i:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 1234
    sget v0, Lgtt$d;->v_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->q:Landroid/view/View;

    .line 1238
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$6;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->y:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 1253
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$7;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->z:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 1267
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$8;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->A:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 1278
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$9;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->B:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

    .line 1284
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$10;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$10;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->C:Lgtz$a;

    .line 1297
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;

    invoke-direct {v1, p0, v11}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$a;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;B)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1416
    invoke-static {p0}, Lgvc;->a(Landroid/content/Context;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 1418
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_1

    .line 1422
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->setIvBack(Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;)V

    .line 1304
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->setTvShare(Landroid/widget/TextView;)V

    .line 1305
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->setTitle(Landroid/widget/TextView;)V

    .line 1306
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->f:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->setScrollView(Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;)V

    .line 1307
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->setWebViewLayout(Landroid/view/ViewGroup;)V

    .line 1308
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->setWebViewWrapper(Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;)V

    .line 1309
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$11;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->setListener(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$a;)V

    .line 1334
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    .line 2114
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->b:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->c:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-nez v1, :cond_3

    .line 1336
    :cond_2
    :goto_0
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    invoke-direct {v0, p0, v11}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->h:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    .line 1337
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->h:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    .line 3039
    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, v0, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->a:F

    .line 1338
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->h:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->w:Ljava/util/List;

    .line 1341
    new-instance v0, Lgty;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->w:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->n:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->s:Lgud;

    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->y:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    iget-object v6, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->z:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v7, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->A:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->B:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

    iget-object v9, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->C:Lgtz$a;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lgty;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Lgud;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;Lgtz$a;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->r:Lgty;

    .line 1350
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->r:Lgty;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1352
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 1353
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 1356
    new-instance v0, Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    .line 1357
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1359
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$12;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 1379
    invoke-super {p0, v12}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->a(Ljava/lang/Runnable;)V

    .line 3443
    invoke-static {}, Lgug;->a()Lgug;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->v:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    const-class v4, Lcma;

    .line 3445
    invoke-static {v0, v4, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4065
    iget-object v4, v1, Lgug;->a:Lgug$a;

    new-instance v5, Lgug$3;

    invoke-direct {v5, v1, v2, v3, v0}, Lgug$3;-><init>(Lgug;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    invoke-virtual {v4, v5}, Lgug$a;->execute(Ljava/lang/Runnable;)V

    .line 118
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v10, "prop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "corpId"

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->u:Ljava/lang/String;

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "sw_recruit_org_home_enter"

    invoke-interface {v0, v12, v1, v10}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 121
    return-void

    .line 2118
    .end local v10    # "prop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    new-instance v2, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$2;

    invoke-direct {v2, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$2;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$b;)V

    .line 2130
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    new-instance v2, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$3;

    invoke-direct {v2, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$3;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->setOnTouchEventObserver(Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView$a;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 143
    .line 4409
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->n:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->y:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 4410
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->n:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->z:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 4411
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->n:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->A:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 4412
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->n:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->setPbListener(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->clearOnScrollListeners()V

    .line 145
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->n:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->setMuted(Z)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->n:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->c()V

    .line 147
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->s:Lgud;

    invoke-interface {v0}, Lgud;->b()V

    .line 148
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->t:Lgud;

    invoke-interface {v0}, Lgud;->b()V

    .line 150
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->b()V

    .line 152
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleDestroy()V

    .line 153
    iput-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 156
    :cond_0
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onDestroy()V

    .line 157
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handlePause()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->n:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    .line 129
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onPause()V

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/activity/BaseVideoPlayActivity;->onResume()V

    .line 135
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleResume()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->n:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    .line 139
    return-void
.end method
