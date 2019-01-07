.class public Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorFragment;
.super Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;
.source "SpaceEditCollaboratorFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorFragment;
    .locals 3
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "spaceType"    # I
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "convId"    # Ljava/lang/String;
    .param p5, "orgId"    # Ljava/lang/String;
    .param p6, "msgId"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "key_space_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v2, "key_file_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v2, "key_space_type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    const-string/jumbo v2, "key_file_name"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v2, "key_conv_id"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v2, "key_org_id"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v2, "key_msg_id"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorFragment;-><init>()V

    .line 47
    .local v1, "fragment":Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorFragment;
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method


# virtual methods
.method protected final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 99
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_file_mobile_invite_addgroup"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method protected final k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 105
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_file_mobile_invite_add"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected final l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 111
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_file_mobile_invite_manage"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 56
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 57
    .local v9, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    if-nez v9, :cond_2

    .line 58
    :cond_0
    sget v0, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 59
    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    sget v0, Lfzs$h;->dt_space_auth_title:I

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 67
    const-string/jumbo v0, "key_space_id"

    .line 68
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "key_file_id"

    .line 69
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "key_space_type"

    .line 70
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v0, "key_file_name"

    .line 71
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "key_conv_id"

    .line 72
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "key_org_id"

    .line 73
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "key_msg_id"

    .line 74
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1059
    invoke-static {v5}, Lgqu;->g(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1060
    new-instance v0, Lgfh;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lgfh;-><init>(Lgfe$b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1062
    :cond_3
    new-instance v0, Lgfi;

    move-object v1, p0

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lgfi;-><init>(Lgfe$b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 81
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorFragment;->I:Landroid/view/View;

    sget v5, Lfzs$f;->iv_empty_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 82
    .local v0, "ivEmptyIcon":Landroid/widget/ImageView;
    const/16 v4, 0x8

    invoke-static {v0, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 84
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorFragment;->I:Landroid/view/View;

    sget v5, Lfzs$f;->tv_empty_tip:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 85
    .local v2, "tvEmptyTip":Landroid/widget/TextView;
    sget v4, Lfzs$h;->dt_cspace_onlindoc_no_members_tip:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 87
    invoke-static {v2, v6}, Lgpk;->a(Landroid/view/View;I)V

    .line 88
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorFragment;->I:Landroid/view/View;

    sget v5, Lfzs$f;->tv_empty_desc:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    .local v1, "tvEmptyDesc":Landroid/widget/TextView;
    sget v4, Lfzs$h;->dt_cspace_onlindoc_no_members_desc:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 91
    invoke-static {v1, v6}, Lgpk;->a(Landroid/view/View;I)V

    .line 93
    return-object v3
.end method
