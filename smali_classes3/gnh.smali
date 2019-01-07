.class public final Lgnh;
.super Lgly;
.source "SpaceMenuPublicAreaAclHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-static {p1, p2, v0}, Lgnh;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_orgfile_permission_root_setting_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 42
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v11

    .line 43
    .local v11, "publicAreaSpaceId":Ljava/lang/String;
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    invoke-virtual {v1, v11}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    .line 45
    invoke-static {}, Lgqd;->a()Lgqd;

    const-string/jumbo v2, "0"

    invoke-static {v11, v2}, Lgqd;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lgqd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "authFlag":Ljava/lang/String;
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    invoke-virtual {v1, v3}, Lgqd;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_conf_space_acl_permission_setting_enable"

    .line 1083
    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    invoke-virtual {v1, v11}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    new-instance v10, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    invoke-direct {v10}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;-><init>()V

    .line 52
    .local v10, "permissionSettingArgs":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    iput v0, v10, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceType:I

    .line 53
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceId:Ljava/lang/String;

    .line 54
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryType:Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "0"

    iput-object v1, v10, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryId:Ljava/lang/String;

    .line 56
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryName:Ljava/lang/String;

    .line 57
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->contentType:Ljava/lang/String;

    .line 58
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->extension:Ljava/lang/String;

    .line 59
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1}, Lgpx;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v1

    iput v1, v10, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryIconResId:I

    .line 60
    iget-wide v4, p2, Lgmb;->d:J

    iput-wide v4, v10, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->orgId:J

    .line 61
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->cid:Ljava/lang/String;

    .line 62
    invoke-static {}, Lgqd;->a()Lgqd;

    const-string/jumbo v1, "modifyManager"

    invoke-static {v3, v1}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iput v0, v10, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->settingMode:I

    .line 64
    invoke-static {p1, v10}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)V

    goto/16 :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 66
    .end local v10    # "permissionSettingArgs":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    :cond_2
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    iget-wide v4, p2, Lgmb;->d:J

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 69
    .end local v3    # "authFlag":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    iget-wide v6, p2, Lgmb;->d:J

    .line 1109
    const-wide/16 v0, 0x0

    invoke-static {v11, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    move-object v4, p1

    .line 69
    invoke-static/range {v4 .. v9}, Lfzu;->a(Landroid/content/Context;Lgiy;JJ)V

    goto/16 :goto_0
.end method
