.class public final Lgme;
.super Lgly;
.source "SpaceAclHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_orgfile_permission_subfolder_setting_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 44
    invoke-static {p1, p2, v0}, Lgme;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v6, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 50
    .local v6, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "folder"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_conf_space_acl_permission_setting_enable"

    .line 1083
    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    new-instance v7, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    invoke-direct {v7}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;-><init>()V

    .line 57
    .local v7, "permissionSettingArgs":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgqu;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceType:I

    .line 58
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceId:Ljava/lang/String;

    .line 59
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryType:Ljava/lang/String;

    .line 60
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryId:Ljava/lang/String;

    .line 61
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryName:Ljava/lang/String;

    .line 62
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->contentType:Ljava/lang/String;

    .line 63
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->extension:Ljava/lang/String;

    .line 64
    invoke-static {v6}, Lgpx;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v1

    iput v1, v7, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryIconResId:I

    .line 65
    iget-wide v2, p2, Lgmb;->d:J

    iput-wide v2, v7, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->orgId:J

    .line 66
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->cid:Ljava/lang/String;

    .line 67
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "modifyManager"

    invoke-static {v1, v2}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    iput v0, v7, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->settingMode:I

    .line 69
    invoke-static {p1, v7}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)V

    goto/16 :goto_0

    .line 67
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 71
    .end local v7    # "permissionSettingArgs":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    :cond_3
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p2, Lgmb;->d:J

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0
.end method
