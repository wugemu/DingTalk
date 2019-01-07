.class public Lcom/alibaba/android/oa/activity/MicroAppListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "MicroAppListActivity.java"


# instance fields
.field private a:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Ledz$g;->activity_microapp_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/activity/MicroAppListActivity;->setContentView(I)V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/MicroAppListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v0, p1, v1}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/MicroAppListActivity;->a:Landroid/support/v4/app/Fragment;

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/MicroAppListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Ledz$h;->more:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/MicroAppListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Ledz$f;->fragment_container:I

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/MicroAppListActivity;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 35
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->b(Z)Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/activity/MicroAppListActivity;->a:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/MicroAppListActivity;->a:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/MicroAppListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/oa/activity/MicroAppListActivity;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, v1, v2}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 44
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 48
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/android/oa/activity/MicroAppListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "org_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 51
    .local v0, "orgId":J
    iget-object v2, p0, Lcom/alibaba/android/oa/activity/MicroAppListActivity;->a:Landroid/support/v4/app/Fragment;

    check-cast v2, Lcom/alibaba/android/oa/fragment/OAContentFragment;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->a(J)V

    .line 52
    return-void
.end method
