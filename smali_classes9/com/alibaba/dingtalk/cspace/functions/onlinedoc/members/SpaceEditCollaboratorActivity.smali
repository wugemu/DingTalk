.class public Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorActivity;
.super Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersActivity;
.source "SpaceEditCollaboratorActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;

    .line 19
    invoke-static {v0}, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fix(Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;)Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;

    move-result-object v7

    .line 21
    .local v7, "args":Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;
    iget-object v0, v7, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceId:Ljava/lang/String;

    iget-object v1, v7, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fileId:Ljava/lang/String;

    iget v2, v7, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceType:I

    iget-object v3, v7, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fileName:Ljava/lang/String;

    iget-object v4, v7, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->convId:Ljava/lang/String;

    iget-object v5, v7, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->orgId:Ljava/lang/String;

    iget-object v6, v7, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->msgId:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorFragment;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/onlinedoc/members/SpaceEditCollaboratorActivity;->a:Lcom/alibaba/dingtalk/cspace/functions/members/SpaceMembersFragment;

    sget v2, Lfzs$f;->fragment_container:I

    invoke-static {v0, v1, v2}, Lgpk;->a(Lcn;Landroid/support/v4/app/Fragment;I)V

    .line 24
    return-void
.end method
