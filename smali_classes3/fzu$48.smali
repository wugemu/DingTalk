.class final Lfzu$48;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->b(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;)V
    .locals 0

    .prologue
    .line 3490
    iput-object p1, p0, Lfzu$48;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    iput-object p2, p0, Lfzu$48;->b:Landroid/app/Activity;

    iput-object p3, p0, Lfzu$48;->c:Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3493
    iget-object v2, p0, Lfzu$48;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->dismiss()V

    .line 3494
    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    iget-object v2, p0, Lfzu$48;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;-><init>(Landroid/app/Activity;)V

    .line 3495
    .local v1, "remindDialog":Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;
    iget-object v2, p0, Lfzu$48;->c:Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->fix(Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;)Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;

    move-result-object v0

    .line 3496
    .local v0, "finalArgs":Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;
    iget-object v2, p0, Lfzu$48;->b:Landroid/app/Activity;

    sget v3, Lfzs$h;->dt_cspace_apply_to_edit:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->b(Ljava/lang/String;)V

    .line 3497
    iget-object v2, p0, Lfzu$48;->b:Landroid/app/Activity;

    sget v3, Lfzs$h;->dt_cspace_send_apply:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->c(Ljava/lang/String;)V

    .line 3498
    iget-object v2, p0, Lfzu$48;->b:Landroid/app/Activity;

    sget v3, Lfzs$h;->dt_cspace_apply_online_edit:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4081
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->e:Ljava/lang/String;

    .line 3499
    iget-object v2, p0, Lfzu$48;->b:Landroid/app/Activity;

    sget v3, Lfzs$h;->dt_cspace_send_apply_tip:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4085
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->f:Ljava/lang/String;

    .line 3500
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->a(Ljava/lang/String;)V

    .line 3501
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->msgId:Ljava/lang/String;

    .line 5065
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->a:Ljava/lang/String;

    .line 3502
    iget v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectType:I

    .line 5069
    iput v2, v1, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->b:I

    .line 3503
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectId:Ljava/lang/String;

    .line 5073
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->c:Ljava/lang/String;

    .line 3504
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectContainerId:Ljava/lang/String;

    .line 5077
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->d:Ljava/lang/String;

    .line 3505
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->memberList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->a(Ljava/util/List;)V

    .line 3506
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->show()V

    .line 3507
    return-void
.end method
