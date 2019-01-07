.class public final Lgnb;
.super Lgly;
.source "SpaceMenuOnlineEditInviteHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;IJLjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "spaceType"    # I
    .param p3, "orgId"    # J
    .param p5, "conversationId"    # Ljava/lang/String;
    .param p6, "msgId"    # Ljava/lang/String;
    .param p7, "pageTag"    # I

    .prologue
    const/4 v4, 0x1

    .line 50
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 51
    :cond_0
    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 110
    :goto_0
    return-void

    .line 56
    :cond_1
    const/4 v2, 0x2

    if-ne p7, v2, :cond_4

    .line 57
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "space_fileslist_more_online_edit_invite"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 62
    :cond_2
    :goto_1
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;-><init>()V

    .line 63
    .local v0, "args":Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceId:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fileId:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->fileName:Ljava/lang/String;

    .line 66
    iput-object p5, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->convId:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lgqu;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceType:I

    .line 68
    iput-object p6, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->msgId:Ljava/lang/String;

    .line 69
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->orgId:Ljava/lang/String;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->identifier:Ljava/lang/String;

    .line 71
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->convId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->convId:Ljava/lang/String;

    .line 75
    :cond_3
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_spcae_acl_file_logic_enable"

    .line 1083
    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 75
    if-nez v2, :cond_5

    .line 76
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;)V

    goto :goto_0

    .line 58
    .end local v0    # "args":Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;
    :cond_4
    if-ne p7, v4, :cond_2

    .line 59
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "cspace_file_mobile_preview_invite"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    .restart local v0    # "args":Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;
    :cond_5
    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;-><init>()V

    .line 81
    .local v1, "permissionSettingArgs":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lgqu;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceType:I

    .line 82
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryType:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryId:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryName:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->contentType:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->extension:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lgpx;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v2

    iput v2, v1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryIconResId:I

    .line 89
    iput-wide p3, v1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->orgId:J

    .line 90
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->cid:Ljava/lang/String;

    .line 91
    iput v4, v1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->settingMode:I

    .line 94
    invoke-static {v1}, Lgfq;->a(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 95
    invoke-static {p0, v1}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)V

    goto/16 :goto_0

    .line 100
    :cond_6
    iget v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceType:I

    invoke-static {v2}, Lgqu;->d(I)Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceType:I

    invoke-static {v2}, Lgqu;->h(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 101
    :cond_7
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_conf_space_acl_permission_setting_enable"

    .line 2083
    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 101
    if-eqz v2, :cond_8

    .line 102
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;->spaceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 104
    invoke-static {p0, v1}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)V

    goto/16 :goto_0

    .line 109
    :cond_8
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lgnb;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 44
    check-cast v1, Landroid/app/Activity;

    iget-object v2, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v3, p2, Lgmb;->c:I

    iget-wide v4, p2, Lgmb;->d:J

    iget-object v6, p2, Lgmb;->f:Ljava/lang/String;

    iget-object v7, p2, Lgmb;->e:Ljava/lang/String;

    iget v8, p2, Lgmb;->o:I

    invoke-static/range {v1 .. v8}, Lgnb;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;IJLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
