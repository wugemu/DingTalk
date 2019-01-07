.class public Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;
.source "CSpaceRecentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/ViewStub;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ListView;

.field private g:I

.field private h:I

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

.field private j:Lgab;

.field private k:Ljava/lang/String;

.field private l:Lgfx;

.field private m:Lgfy;

.field private n:Landroid/os/Handler;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Lfzq;

.field private v:Landroid/view/View;

.field private w:Z

.field private x:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

.field private y:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->d:Landroid/view/ViewStub;

    .line 70
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->k:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    .line 72
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->m:Lgfy;

    .line 73
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->n:Landroid/os/Handler;

    .line 74
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->o:Landroid/view/View;

    .line 75
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->p:Landroid/view/View;

    .line 76
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->q:Landroid/widget/TextView;

    .line 77
    new-instance v0, Lfzq;

    invoke-direct {v0}, Lfzq;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->r:Lfzq;

    .line 78
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->v:Landroid/view/View;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->w:Z

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->g:I

    return p1
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;-><init>()V

    .line 89
    .local v1, "fragment":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "key_accoount_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v1
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 373
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c:Landroid/widget/TextView;

    sget v1, Lfzs$h;->loading_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 385
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    invoke-direct {p0, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->h:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Lgfx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    return-object v0
.end method

.method private b(Z)V
    .locals 5
    .param p1, "isShowSuccessPage"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 131
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "space.recent.list"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-eqz p1, :cond_4

    .line 133
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->j:Lgab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->j:Lgab;

    invoke-virtual {v0}, Lgab;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 134
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c(Z)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 136
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 144
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 145
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_2
    :goto_1
    return-void

    .line 139
    :cond_3
    invoke-direct {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c(Z)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_4
    invoke-direct {p0, v3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c(Z)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c:Landroid/widget/TextView;

    sget v1, Lfzs$h;->space_recent_operation_loaderror:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 429
    .line 4051
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 429
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    .line 4428
    iget-boolean v0, v0, Lgfx;->i:Z

    .line 433
    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    .line 4436
    iget-boolean v0, v0, Lgfx;->f:Z

    .line 440
    if-eqz v0, :cond_3

    .line 441
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->q:Landroid/widget/TextView;

    sget v1, Lfzs$h;->alm_cmail_loading_from_server:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 445
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->o:Landroid/view/View;

    sget v1, Lfzs$e;->alm_cmail_mail_common_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 447
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->q:Landroid/widget/TextView;

    sget v1, Lfzs$h;->alm_cmail_load_complete:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 451
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->o:Landroid/view/View;

    sget v1, Lfzs$c;->alm_cmail_color_7_5:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 452
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfzs$c;->alm_cmail_color_6_7:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 2
    .param p1, "isShowing"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 392
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    if-eqz p1, :cond_6

    .line 396
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 397
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setVisibility(I)V

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 400
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->e:Landroid/view/View;

    if-nez v0, :cond_4

    .line 403
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->d:Landroid/view/ViewStub;

    sget v1, Lfzs$f;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 404
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->d:Landroid/view/ViewStub;

    sget v1, Lfzs$g;->cspace_recent_fragment_empty:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 405
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->d:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->e:Landroid/view/View;

    .line 407
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 408
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->e:Landroid/view/View;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$5;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 418
    :cond_6
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 420
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 422
    :cond_7
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->h:I

    return v0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 487
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    .line 5428
    iget-boolean v0, v0, Lgfx;->i:Z

    .line 487
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    .line 5436
    iget-boolean v0, v0, Lgfx;->f:Z

    .line 487
    if-nez v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->p:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    .line 6428
    iget-boolean v1, v0, Lgfx;->i:Z

    .line 6416
    if-nez v1, :cond_0

    .line 6419
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgfx;->i:Z

    .line 6420
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lgfx;->a(I)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->g:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->d()V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Lgab;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->j:Lgab;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c()V

    return-void
.end method


# virtual methods
.method protected final E_()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 256
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->E_()V

    .line 257
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->w:Z

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 261
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "space.recent.list"

    invoke-static {v0, v1, v2}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->m:Lgfy;

    if-nez v0, :cond_1

    .line 263
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->m:Lgfy;

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    if-nez v0, :cond_2

    .line 357
    new-instance v1, Lgfx;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->k:Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v4

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->m:Lgfy;

    invoke-direct/range {v1 .. v6}, Lgfx;-><init>(Landroid/app/Activity;Ljava/lang/String;JLgfy;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    .line 358
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a()V

    .line 359
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    .line 3099
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    iput-object v1, v0, Lgfx;->g:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 3100
    iget-object v1, v0, Lgfx;->g:Lcom/alibaba/doraemon/threadpool/Thread;

    new-instance v2, Lgfx$1;

    invoke-direct {v2, v0}, Lgfx$1;-><init>(Lgfx;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 362
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->b(Z)V

    .line 363
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v1, "key_accoount_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->k:Ljava/lang/String;

    .line 103
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const v3, 0x102000d

    const/4 v5, 0x1

    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 172
    sget v1, Lfzs$g;->cspace_recent_fragment:I

    invoke-virtual {p1, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->v:Landroid/view/View;

    .line 173
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->k:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 174
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->k:Ljava/lang/String;

    .line 176
    :cond_0
    invoke-static {}, Lgfw;->b()Lgfw;

    move-result-object v1

    if-nez v1, :cond_1

    .line 177
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 178
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lgfw;->a(Landroid/app/Activity;Lcom/alibaba/doraemon/image/ImageMagician;)V

    .line 180
    .end local v0    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->n:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 181
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->n:Landroid/os/Handler;

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->v:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a:Landroid/view/View;

    .line 184
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a:Landroid/view/View;

    sget v2, Lfzs$f;->progress_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->b:Landroid/widget/ProgressBar;

    .line 185
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a:Landroid/view/View;

    sget v2, Lfzs$f;->progress_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c:Landroid/widget/TextView;

    .line 186
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->v:Landroid/view/View;

    sget v2, Lfzs$f;->view_stub_show_detail:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->d:Landroid/view/ViewStub;

    .line 187
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->cspace_recent_list_more_view:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->o:Landroid/view/View;

    .line 188
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->o:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->o:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->p:Landroid/view/View;

    .line 190
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->o:Landroid/view/View;

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->q:Landroid/widget/TextView;

    .line 191
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->v:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->f:Landroid/widget/ListView;

    .line 192
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->f:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->o:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 193
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->j:Lgab;

    if-nez v1, :cond_3

    .line 194
    new-instance v1, Lgab;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->n:Landroid/os/Handler;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->k:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lgab;-><init>(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->j:Lgab;

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->f:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->j:Lgab;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->v:Landroid/view/View;

    sget v2, Lfzs$f;->swipe_layout_mail_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 199
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lfzs$c;->swipe_refresh_color1:I

    aput v4, v2, v3

    sget v3, Lfzs$c;->swipe_refresh_color2:I

    aput v3, v2, v5

    const/4 v3, 0x2

    sget v4, Lfzs$c;->swipe_refresh_color1:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lfzs$c;->swipe_refresh_color2:I

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setColorScheme([I)V

    .line 201
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    if-nez v1, :cond_4

    .line 202
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    .line 213
    :cond_4
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;)V

    .line 214
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->y:Landroid/widget/AbsListView$OnScrollListener;

    if-nez v1, :cond_5

    .line 215
    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->y:Landroid/widget/AbsListView$OnScrollListener;

    .line 248
    :cond_5
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->f:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->y:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 249
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->w:Z

    .line 250
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->E_()V

    .line 251
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->v:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onDestroy()V

    .line 1457
    invoke-static {}, Lgfw;->a()V

    .line 1458
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    if-eqz v0, :cond_1

    .line 1459
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    .line 2134
    iget-object v1, v0, Lgfx;->g:Lcom/alibaba/doraemon/threadpool/Thread;

    if-eqz v1, :cond_0

    .line 2135
    iget-object v1, v0, Lgfx;->g:Lcom/alibaba/doraemon/threadpool/Thread;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->cancel(Z)V

    .line 2136
    iput-object v3, v0, Lgfx;->g:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 2138
    :cond_0
    iput-object v3, v0, Lgfx;->c:Ljava/util/List;

    .line 1460
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    .line 2467
    :cond_1
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->a:Landroid/view/View;

    .line 2468
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->b:Landroid/widget/ProgressBar;

    .line 2469
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c:Landroid/widget/TextView;

    .line 2470
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->d:Landroid/view/ViewStub;

    .line 2471
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->e:Landroid/view/View;

    .line 2472
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->f:Landroid/widget/ListView;

    .line 2473
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    .line 2474
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->j:Lgab;

    .line 2475
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->l:Lgfx;

    .line 2476
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->m:Lgfy;

    .line 2477
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->n:Landroid/os/Handler;

    .line 2478
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->o:Landroid/view/View;

    .line 2479
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->p:Landroid/view/View;

    .line 2480
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->q:Landroid/widget/TextView;

    .line 2481
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->r:Lfzq;

    .line 2482
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;

    .line 2483
    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->y:Landroid/widget/AbsListView$OnScrollListener;

    .line 109
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->r:Lfzq;

    .line 7053
    iget-wide v4, v2, Lfzq;->b:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 7056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Lfzq;->b:J

    sub-long/2addr v4, v6

    .line 7057
    iget-wide v2, v2, Lfzq;->a:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_1

    const/4 v2, 0x1

    .line 498
    :goto_0
    if-eqz v2, :cond_2

    .line 519
    :cond_0
    :goto_1
    return-void

    .line 7057
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 501
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->r:Lfzq;

    .line 8041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lfzq;->b:J

    .line 502
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->o:Landroid/view/View;

    if-ne p2, v2, :cond_3

    .line 503
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->d()V

    goto :goto_1

    .line 507
    :cond_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "space_file_filedynamic_feeds_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 510
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 511
    check-cast v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 512
    .local v0, "model":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileCount:I

    if-eqz v2, :cond_0

    .line 515
    iget-object v2, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->k:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lggc;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    const-string/jumbo v0, "key_accoount_name"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 122
    const-string/jumbo v0, "key_accoount_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->k:Ljava/lang/String;

    .line 125
    :cond_0
    return-void
.end method
