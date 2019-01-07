.class public Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "PermissionSettingActivity.java"


# instance fields
.field private a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v2, Lfzs$g;->activity_space_permission_setting_layout:I

    invoke-virtual {p0, v2}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingActivity;->setContentView(I)V

    .line 41
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v3, Lfzs$h;->and_setting_rights:I

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 44
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingActivity;->finish()V

    .line 59
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string/jumbo v2, "intent_key_args"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    .line 50
    .local v0, "args":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingActivity;->finish()V

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    .line 57
    new-instance v2, Lgfp;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    invoke-direct {v2, p0, v0, v3}, Lgfp;-><init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;Lgfn$b;)V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    sget v4, Lfzs$f;->fragment_container:I

    invoke-static {v2, v3, v4}, Lgpk;->a(Lcn;Landroid/support/v4/app/Fragment;I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
