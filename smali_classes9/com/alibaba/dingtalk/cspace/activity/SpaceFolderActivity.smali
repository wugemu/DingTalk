.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;
.super Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;
.source "SpaceFolderActivity.java"


# instance fields
.field private N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

.field private O:I

.field private P:Ljava/lang/String;

.field private Q:J

.field private R:J

.field private S:Z

.field private T:J

.field private U:J

.field private V:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;-><init>()V

    .line 32
    sget v0, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->b:I

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->V:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 132
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
    .line 127
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    return-void
.end method

.method protected final d(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 137
    return-void
.end method

.method protected final g()Lgoa;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    instance-of v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    if-nez v0, :cond_1

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    check-cast v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->f()Lgoa;

    move-result-object v0

    goto :goto_0
.end method

.method protected final l()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    instance-of v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    check-cast v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->c()V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    sget v0, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v4, Lfzs$g;->activity_space_blank:I

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 40
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 41
    const-string/jumbo v4, "space_folder_type_key"

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->O:I

    .line 42
    const-string/jumbo v4, "space_org_id"

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->m:J

    .line 43
    const-string/jumbo v4, "space_org_name"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->P:Ljava/lang/String;

    .line 44
    const-string/jumbo v4, "public_space_id"

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->Q:J

    .line 45
    const-string/jumbo v4, "space_capacity_used"

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->R:J

    .line 46
    const-string/jumbo v4, "is_space_admin"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->S:Z

    .line 47
    const-string/jumbo v4, "space_folder_modified_time"

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->T:J

    .line 48
    const-string/jumbo v4, "is_space_admin"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->S:Z

    .line 50
    const-string/jumbo v4, "space_folder_modified_time"

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->T:J

    .line 52
    const-string/jumbo v4, "intent_key_share_new_conversation_id"

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->U:J

    .line 53
    const-string/jumbo v4, "space_from_falg"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->V:I

    .line 56
    :cond_0
    const-string/jumbo v4, ""

    invoke-virtual {p0, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->c(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->t()V

    .line 59
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->O:I

    if-ne v4, v9, :cond_1

    .line 60
    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->U:J

    iget-wide v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->m:J

    invoke-static {v4, v6, v7, v8, v9}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a(IJJ)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    move-result-object v0

    .line 61
    .local v0, "cooperationFragment":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->V:I

    .line 2117
    iput v4, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->a:I

    .line 62
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    .line 74
    .end local v0    # "cooperationFragment":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->getSupportFragmentManager()Lcn;

    move-result-object v4

    invoke-virtual {v4}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 75
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    sget v4, Lfzs$f;->fragment_container:I

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 76
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 77
    return-void

    .line 65
    .end local v1    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->m:J

    invoke-static {v4, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a(J)Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    .line 66
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    check-cast v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .line 67
    .local v3, "tempFragemnt":Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->Q:J

    .line 2508
    iput-wide v4, v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->a:J

    .line 68
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->R:J

    .line 2512
    iput-wide v4, v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->b:J

    .line 69
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->S:Z

    .line 2516
    iput-boolean v4, v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->c:Z

    .line 70
    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->T:J

    .line 2520
    iput-wide v4, v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->d:J

    .line 71
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->P:Ljava/lang/String;

    .line 2524
    iput-object v4, v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->h()V

    .line 92
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->O:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 3102
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x5

    move v1, v0

    .line 3103
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    instance-of v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    if-eqz v0, :cond_0

    .line 3106
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    check-cast v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .line 3107
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3108
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->m:J

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->a(Landroid/view/Menu;IJ)V

    .line 97
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->a(Landroid/view/Menu;)V

    .line 98
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 3102
    :cond_1
    const/4 v0, 0x4

    move v1, v0

    goto :goto_0

    .line 3114
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    instance-of v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    if-eqz v0, :cond_0

    .line 3117
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->N:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    check-cast v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;

    .line 3118
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceGroupFolderFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3119
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->m:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->a(Landroid/view/Menu;IJ)V

    .line 3121
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceFolderActivity;->k()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->onDestroy()V

    .line 87
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->onResume()V

    .line 82
    return-void
.end method
