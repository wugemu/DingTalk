.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceSearchActivity.java"


# instance fields
.field private final a:I

.field private b:Landroid/widget/SearchView;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/FrameLayout;

.field private g:Lggo;

.field private h:Lggp;

.field private i:Lggm;

.field private j:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

.field private k:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Z

.field private p:I

.field private q:I

.field private r:J

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 60
    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->a:I

    .line 62
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->b:Landroid/widget/SearchView;

    .line 69
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->i:Lggm;

    .line 75
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->o:Z

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->p:I

    .line 351
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$8;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->u:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)Lggm;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->i:Lggm;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 55
    .line 5362
    invoke-static {p0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5365
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->d:Ljava/lang/String;

    .line 5366
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5368
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->u:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    .line 5370
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .line 6284
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6285
    const-string/jumbo v2, "kw="

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6286
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "space_search_cancel_click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 6288
    iput-object v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->b:Ljava/lang/String;

    .line 6289
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    if-eqz v1, :cond_0

    .line 6290
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->c()Ljava/util/List;

    move-result-object v1

    .line 6291
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->c:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;

    invoke-virtual {v2, v4}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceSearchAdapter;->a(Ljava/util/List;)V

    .line 6292
    if-eqz v1, :cond_2

    .line 6293
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6296
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(ZILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;ZI)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 55
    .line 5272
    if-nez p1, :cond_0

    if-lez p2, :cond_1

    .line 5273
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5274
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5275
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 5277
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5278
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5279
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5280
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5281
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->n:Landroid/widget/TextView;

    sget v1, Lfzs$h;->alm_search_no_result:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 55
    .line 4250
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->o:Z

    if-eqz v0, :cond_0

    .line 4253
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->i:Lggm;

    invoke-virtual {v0}, Lggm;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 4254
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4255
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4256
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4257
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4258
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->n:Landroid/widget/TextView;

    sget v1, Lfzs$h;->alm_search_start_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    .line 4260
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4261
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4262
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)Lggo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->g:Lggo;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->b:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 55
    .line 4290
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4291
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4292
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4293
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4294
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->n:Landroid/widget/TextView;

    sget v1, Lfzs$h;->alm_cmail_loading_mails:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    return-void
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 85
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "space_org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->r:J

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "space_search_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->q:I

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "space_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->s:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "space_category_current_folderId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->t:Ljava/lang/String;

    .line 97
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->c:Landroid/os/Handler;

    .line 98
    sget v0, Lfzs$g;->activity_space_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->setContentView(I)V

    .line 1136
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->h:Lggp;

    .line 1166
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 1167
    new-instance v0, Lggo;

    const-string/jumbo v4, "almspace"

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->h:Lggp;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lggo;-><init>(Landroid/content/Context;JLjava/lang/String;ILggp;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->g:Lggo;

    .line 1170
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V

    .line 1179
    new-instance v1, Lggm;

    invoke-direct {v1, p0, v7, v0}, Lggm;-><init>(Landroid/content/Context;ZLandroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->i:Lggm;

    .line 1180
    sget v0, Lfzs$f;->ll_points:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->l:Landroid/view/View;

    .line 1181
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->m:Landroid/view/View;

    .line 1182
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->n:Landroid/widget/TextView;

    .line 1183
    sget v0, Lfzs$f;->searchListView:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e:Landroid/widget/ListView;

    .line 1184
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e:Landroid/widget/ListView;

    const v1, 0x1020005

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 1185
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1186
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1187
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->i:Lggm;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1188
    sget v0, Lfzs$f;->ll_mail_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->f:Landroid/widget/FrameLayout;

    .line 1189
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1190
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1202
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1203
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    if-nez v0, :cond_2

    .line 1204
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->q:I

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->r:J

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->t:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1, v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->a(IJLjava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .line 1207
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->k:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

    if-nez v0, :cond_3

    .line 1208
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->k:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

    .line 1241
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->k:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

    .line 2144
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

    .line 1243
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1244
    sget v1, Lfzs$f;->ll_mail_content:I

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1245
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 100
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->g:Lggo;

    .line 3101
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 3102
    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 3103
    new-instance v2, Lggo$2;

    invoke-direct {v2, v1}, Lggo$2;-><init>(Lggo;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 299
    const-string/jumbo v1, ""

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 300
    .local v0, "searchInput":Landroid/view/MenuItem;
    sget v1, Lfzs$h;->search:I

    invoke-static {p0, v1}, Lcms;->a(Landroid/app/Activity;I)Landroid/widget/SearchView;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->b:Landroid/widget/SearchView;

    .line 301
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->b:Landroid/widget/SearchView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 302
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 303
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 305
    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$5;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V

    invoke-static {v0, v1}, Lgd;->a(Landroid/view/MenuItem;Lgd$d;)Landroid/view/MenuItem;

    .line 318
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->b:Landroid/widget/SearchView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$6;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 340
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->b:Landroid/widget/SearchView;

    sget v2, Lfzs$h;->search_box_hint_space:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->b:Landroid/widget/SearchView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$7;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 376
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 377
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .line 3148
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 379
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .line 4144
    iput-object v2, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

    .line 380
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .line 382
    :cond_0
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->k:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;

    .line 383
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    :cond_1
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->c:Landroid/os/Handler;

    .line 387
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->u:Ljava/lang/Runnable;

    .line 388
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->d:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->b:Landroid/widget/SearchView;

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 391
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 392
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->b:Landroid/widget/SearchView;

    .line 395
    :cond_2
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->h:Lggp;

    .line 396
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->e:Landroid/widget/ListView;

    .line 397
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->f:Landroid/widget/FrameLayout;

    .line 398
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->g:Lggo;

    .line 399
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->h:Lggp;

    .line 400
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->i:Lggm;

    .line 401
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->l:Landroid/view/View;

    .line 402
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->m:Landroid/view/View;

    .line 403
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->n:Landroid/widget/TextView;

    .line 404
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 113
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->p:I

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->b:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->b:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 118
    :cond_0
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->p:I

    .line 119
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .line 128
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->j:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .line 127
    invoke-virtual {v0, p1, v1, v2}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
