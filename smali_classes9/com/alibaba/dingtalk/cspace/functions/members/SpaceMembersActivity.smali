.class public Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceMembersActivity.java"


# instance fields
.field protected a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 56
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v0, Lfzs$g;->activity_space_blank:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersActivity;->finish()V

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersActivity;->a()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 40
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    if-nez v0, :cond_0

    .line 46
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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
