.class public Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceAclMembersActivity.java"


# instance fields
.field a:Lgdl;

.field private b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    .line 1610
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->a:Landroid/view/View;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 1612
    iget v3, v2, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->b:I

    if-ne v3, v0, :cond_1

    .line 1613
    invoke-virtual {v2, v1, v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->a(IZ)V

    .line 1614
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 116
    :goto_0
    if-nez v0, :cond_0

    .line 117
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 119
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1618
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super/range {p0 .. p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v4, Lfzs$g;->activity_space_blank:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->setContentView(I)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 51
    .local v18, "intent":Landroid/content/Intent;
    if-nez v18, :cond_0

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->finish()V

    .line 95
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string/jumbo v4, "space_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "spaceId":Ljava/lang/String;
    const-string/jumbo v4, "space_category_current_folderId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "folderId":Ljava/lang/String;
    const-string/jumbo v4, "space_org_id"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 59
    .local v10, "orgId":J
    const-string/jumbo v4, "intent_key_acl_type"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 60
    .local v8, "aclType":J
    const-string/jumbo v4, "intent_key_acl_member_can_edit"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 62
    .local v17, "canEdit":Z
    const-string/jumbo v4, "intent_key_acl_add_member_types"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 63
    .local v13, "allowAddMembersTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 64
    .local v14, "canChooseConversation":Z
    const/16 v16, 0x0

    .line 65
    .local v16, "canChooseUsers":Z
    const/4 v15, 0x0

    .line 67
    .local v15, "canChooseDept":Z
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 68
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 69
    .local v19, "temp":Ljava/lang/Integer;
    if-eqz v19, :cond_1

    .line 73
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v12, 0x2

    if-ne v5, v12, :cond_2

    .line 74
    const/16 v16, 0x1

    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v12, 0x1

    if-ne v5, v12, :cond_3

    .line 76
    const/4 v14, 0x1

    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_1

    .line 78
    const/4 v15, 0x1

    goto :goto_1

    .line 83
    .end local v19    # "temp":Ljava/lang/Integer;
    :cond_4
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v15, v14, v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->a(ZZZZ)Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    .line 85
    const-wide/16 v4, 0x3eb

    cmp-long v4, v8, v4

    if-nez v4, :cond_6

    .line 86
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v5, Lfzs$h;->dt_cspace_acl_member_admin:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    :cond_5
    :goto_2
    new-instance v4, Lgdl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lgdl;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JJLgdj$b;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->a:Lgdl;

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->getSupportFragmentManager()Lcn;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    sget v12, Lfzs$f;->fragment_container:I

    invoke-static {v4, v5, v12}, Lgpk;->a(Lcn;Landroid/support/v4/app/Fragment;I)V

    goto/16 :goto_0

    .line 87
    :cond_6
    const-wide/16 v4, 0x3ea

    cmp-long v4, v8, v4

    if-nez v4, :cond_7

    .line 88
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v5, Lfzs$h;->dt_cspace_acl_member_uploader:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 89
    :cond_7
    const-wide/16 v4, 0x3e9

    cmp-long v4, v8, v4

    if-nez v4, :cond_5

    .line 90
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v5, Lfzs$h;->dt_cspace_acl_member_browser:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 124
    invoke-static {}, Lgdm;->c()Lgdm;

    move-result-object v0

    invoke-virtual {v0}, Lgdm;->a()V

    .line 125
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersActivity;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclMembersFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
