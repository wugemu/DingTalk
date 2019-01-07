.class public Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "OrgApplyActivity.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/view/View;

.field private c:Lfgp;

.field private d:J

.field private final e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Lcjo$a;

.field private n:Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 52
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->d:J

    .line 53
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->e:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->f:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->j:Z

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->k:I

    .line 61
    const-string/jumbo v0, "12034"

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->l:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->k:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;
    .param p1, "x1"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 45
    .line 5313
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5314
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5315
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5316
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5317
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;ZJLjava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 45
    .line 3341
    if-eqz p1, :cond_0

    .line 3342
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/org_apply_form_preview.html"

    new-instance v2, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$8;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$8;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;JLjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 3352
    :cond_0
    const-string/jumbo v0, "pref_org_apply_jump_2_customize_tip_clicked"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpl;->a(Ljava/lang/String;Z)V

    .line 3353
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->n:Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 45
    return-void
.end method

.method private a(Z)V
    .locals 7
    .param p1, "loadMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 216
    if-nez p1, :cond_0

    .line 2305
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2306
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2307
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b:Landroid/view/View;

    sget v2, Lezg$h;->progress_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2308
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b:Landroid/view/View;

    sget v2, Lezg$h;->tv_empty:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lezg$l;->loading:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2309
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b:Landroid/view/View;

    sget v2, Lezg$h;->tv_empty:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;Z)V

    .line 301
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->d:J

    const/16 v3, 0x14

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v6, Lcma;

    invoke-interface {v1, v0, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v2, v4, v5, v3, v1}, Lezt;->b(JILcma;)V

    .line 302
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->h:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)Lfgp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->c:Lfgp;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->g:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->g:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->i:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->h:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->i:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->k:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 45
    .line 4321
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4322
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4323
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4324
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4325
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->no_org_apply:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    .line 4327
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4328
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 334
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    .line 335
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->c:Lfgp;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->c:Lfgp;

    .line 2760
    iget-object v1, v0, Lfgp;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 2761
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "action_group_apply_removed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2762
    const-string/jumbo v2, "user_id"

    iget-object v3, v0, Lfgp;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2763
    iget-object v0, v0, Lfgp;->a:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 338
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    sget v1, Lezg$j;->activity_org_apply:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->setContentView(I)V

    .line 98
    sget v1, Lezg$h;->list_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a:Landroid/widget/ListView;

    .line 99
    sget v1, Lezg$h;->ll_progress:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b:Landroid/view/View;

    .line 100
    new-instance v1, Lfgp;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->f:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lfgp;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->c:Lfgp;

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lezg$l;->org_apply:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1167
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 1168
    if-nez v1, :cond_2

    .line 105
    .local v0, "mainOrgObjectFinal":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "pref_org_apply_jump_2_customize_tip_clicked"

    invoke-static {v1, v5}, Lcpl;->c(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    new-instance v1, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->n:Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->n:Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;

    sget v2, Lezg$l;->dt_org_apply_navigate_customize_form_hint:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->setText(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->n:Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;

    new-instance v2, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->setStyle(Lecr;)V

    .line 114
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->n:Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->n:Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;

    new-instance v2, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->setBarOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->n:Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;

    new-instance v2, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->n:Lcom/alibaba/android/dingtalkui/bar/notice/DtNoticeBar;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->c:Lfgp;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 132
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 156
    invoke-direct {p0, v5}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a(Z)V

    .line 1186
    new-instance v2, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$6;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)V

    .line 1210
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1211
    const-string/jumbo v1, "com.workapp.org_apply_clear_change"

    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1212
    const-string/jumbo v1, "com.workapp.org_apply_change"

    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1213
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    invoke-interface {v1, v2, p0, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 2068
    new-instance v1, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->m:Lcjo$a;

    .line 2092
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->m:Lcjo$a;

    invoke-interface {v1, v2}, Lfac;->a(Lcjo$a;)V

    .line 159
    return-void

    .line 1171
    .end local v0    # "mainOrgObjectFinal":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_2
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v2, v3}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1174
    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 181
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 182
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->m:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->b(Lcjo$a;)V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->m:Lcjo$a;

    .line 184
    return-void
.end method
