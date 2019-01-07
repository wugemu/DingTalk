.class public Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "AvatarSettingActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

.field private b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->c:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;)Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 25
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v6, Lctk$g;->im_avatar_setting_activity:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "avatar"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "oldAvatar":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "use_enterprise_icon"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 29
    .local v5, "useEnterpriseAvatar":Z
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "enterprise_name"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "enterpriseName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "enterprise_name_suffix_icon_res_id"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 31
    .local v2, "enterpriseNameSuffixIconResId":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "enterprise_icon"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "enterpriseIcon":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "title"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "avatar_setting_mode"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->b:I

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->getSupportFragmentManager()Lcn;

    move-result-object v6

    sget v7, Lctk$f;->inner_fragment:I

    invoke-virtual {v6, v7}, Lcn;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    check-cast v6, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    iput-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .line 35
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .line 1078
    iput-object v3, v6, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a:Ljava/lang/String;

    .line 36
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .line 1086
    iput-boolean v5, v6, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->b:Z

    .line 37
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .line 1094
    iput-object v1, v6, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->c:Ljava/lang/String;

    .line 38
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .line 1102
    iput v2, v6, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->d:I

    .line 39
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .line 1106
    iput-object v0, v6, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->e:Ljava/lang/String;

    .line 40
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->c()V

    .line 41
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 42
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 51
    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->b:I

    if-nez v2, :cond_1

    .line 52
    sget v2, Lctk$i;->dt_accessibility_finish:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v5, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 53
    .local v1, "okItem":Landroid/view/MenuItem;
    sget v2, Lctk$e;->ic_actbar_conv_ok_selector:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 54
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 60
    .end local v1    # "okItem":Landroid/view/MenuItem;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 55
    :cond_1
    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->b:I

    if-ne v2, v5, :cond_0

    .line 56
    sget v2, Lctk$i;->dt_accessibility_next:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v4, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 57
    .local v0, "nextItem":Landroid/view/MenuItem;
    sget v2, Lctk$e;->acbar_icon_next:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 58
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 67
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .line 1114
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->f:Z

    .line 67
    if-nez v1, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "avatar"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .line 2082
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string/jumbo v1, "use_enterprise_icon"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .line 2090
    iget-boolean v2, v2, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->b:Z

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->finish()V

    goto :goto_0

    .line 3083
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .line 3114
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->f:Z

    .line 3083
    if-nez v1, :cond_0

    .line 3084
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/im/group_name_setting.html"

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/AvatarSettingActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
