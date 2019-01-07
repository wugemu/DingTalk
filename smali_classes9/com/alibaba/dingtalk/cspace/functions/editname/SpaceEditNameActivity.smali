.class public Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceEditNameActivity.java"


# instance fields
.field private a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->f()Z

    .line 63
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 64
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lfzs$g;->activity_space_blank:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->a(Landroid/content/Intent;)Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    .line 31
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    if-nez v0, :cond_0

    .line 32
    sget v0, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 33
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceEditNameActivity"

    const-string/jumbo v2, "onCreate: can not create mFragment"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameActivity;->finish()V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    sget v2, Lfzs$f;->fragment_container:I

    invoke-static {v0, v1, v2}, Lgpk;->a(Lcn;Landroid/support/v4/app/Fragment;I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 47
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    if-nez v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
