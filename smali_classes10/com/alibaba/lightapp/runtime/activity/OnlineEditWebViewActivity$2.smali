.class final Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$2;
.super Ljava/lang/Object;
.source "OnlineEditWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_file_mobile_editing_invite"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;-><init>()V

    .line 132
    .local v0, "args":Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceId:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->b(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fileId:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->c(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->convId:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->d(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->msgId:Ljava/lang/String;

    .line 136
    const-string/jumbo v1, "OnlineEditDelegate.identifier"

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->identifier:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->e(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "intent_key_space_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceType:I

    .line 138
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->e(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "intent_key_file_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fileName:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->e(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "org_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->orgId:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$2;->a:Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;)V

    .line 141
    return-void
.end method
