.class public Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CsDentryListActivity.java"


# instance fields
.field private a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "CsDentryListActivity"

    const-string/jumbo v4, "space_filelist_v1"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    sget v2, Lfzs$g;->activity_dentry_list:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->setContentView(I)V

    .line 36
    sget v2, Lfzs$f;->ui_common_base_ui_activity_toolbar_divide:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "actionBarDivider":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 38
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;->a(Landroid/content/Intent;)Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    .line 42
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    if-nez v2, :cond_1

    .line 43
    sget v2, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 44
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "CsDentryListActivity"

    const-string/jumbo v4, "onCreate: can not create mFragment"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->finish()V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    .line 51
    .local v1, "fragmentManager":Lcn;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListFragment;

    sget v3, Lfzs$f;->fragment_container:I

    invoke-static {v1, v2, v3}, Lgpk;->a(Lcn;Landroid/support/v4/app/Fragment;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method
