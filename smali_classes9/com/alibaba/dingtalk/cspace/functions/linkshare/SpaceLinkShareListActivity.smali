.class public Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;
.super Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
.source "SpaceLinkShareListActivity.java"


# instance fields
.field private N:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method

.method protected final c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    return-void
.end method

.method protected final d(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->N:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->N:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->N:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->N:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "SpaceLinkShareListActivity"

    const-string/jumbo v4, "space_sharelink_mgr_mainpage"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 45
    sget v2, Lfzs$g;->activity_space_blank:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->setContentView(I)V

    .line 46
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->hideToolbarDivide()V

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "space_org_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 50
    .local v0, "orgId":J
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->l()Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->N:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    .line 52
    new-instance v2, Lgey;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->N:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-direct {v2, v0, v1, v3}, Lgey;-><init>(JLgex$b;)V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->N:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    sget v4, Lfzs$f;->fragment_container:I

    invoke-static {v2, v3, v4}, Lgpk;->a(Lcn;Landroid/support/v4/app/Fragment;I)V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->h()V

    .line 66
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->N:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->N:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->s()I

    move-result v0

    .line 68
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->N:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->i()V

    .line 76
    .end local v0    # "mode":I
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->a(Landroid/view/Menu;)V

    .line 77
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 72
    .restart local v0    # "mode":I
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->j()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onDestroy()V

    .line 60
    invoke-static {}, Lgez;->c()Lgez;

    move-result-object v0

    invoke-virtual {v0}, Lgez;->a()V

    .line 61
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->N:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareListActivity;->N:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
