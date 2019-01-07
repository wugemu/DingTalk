.class public final Lgmg;
.super Lgly;
.source "SpaceMenuCoFolderPermissionModifyHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
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
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 36
    invoke-static {p1, p2, v4}, Lgmg;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p2, Lgmb;->m:Lgit;

    .line 40
    .local v0, "coFolderModel":Lgit;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lgit;->j:Lgjb;

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_filelist_setting_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_conf_space_acl_permission_setting_enable"

    .line 1083
    invoke-virtual {v1, v2, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 47
    if-eqz v1, :cond_3

    iget-object v1, v0, Lgit;->n:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 48
    if-eqz v1, :cond_3

    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v1, :cond_3

    .line 50
    new-instance v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    invoke-direct {v8}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;-><init>()V

    .line 51
    .local v8, "permissionSettingArgs":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    const/4 v1, 0x6

    iput v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceType:I

    .line 52
    iget-object v1, v0, Lgit;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceId:Ljava/lang/String;

    .line 53
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryType:Ljava/lang/String;

    .line 54
    const-string/jumbo v1, "0"

    iput-object v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryId:Ljava/lang/String;

    .line 55
    if-eqz v0, :cond_2

    iget-object v1, v0, Lgit;->c:Ljava/lang/String;

    :goto_1
    iput-object v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryName:Ljava/lang/String;

    .line 56
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->contentType:Ljava/lang/String;

    .line 57
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->extension:Ljava/lang/String;

    .line 58
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1}, Lgpx;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v1

    iput v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryIconResId:I

    .line 59
    iget-object v1, v0, Lgit;->j:Lgjb;

    iget-object v1, v1, Lgjb;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 59
    iput-wide v2, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->orgId:J

    .line 60
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->cid:Ljava/lang/String;

    .line 61
    iput v4, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->settingMode:I

    .line 63
    invoke-static {p1, v8}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_1

    .line 66
    .end local v8    # "permissionSettingArgs":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    :cond_3
    iget-object v2, v0, Lgit;->c:Ljava/lang/String;

    iget-object v3, v0, Lgit;->b:Ljava/lang/String;

    iget-object v1, v0, Lgit;->j:Lgjb;

    iget-object v1, v1, Lgjb;->a:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 67
    iget-object v1, v0, Lgit;->k:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 68
    iget-object v7, v0, Lgit;->m:Ljava/lang/String;

    move-object v1, p1

    .line 66
    invoke-static/range {v1 .. v7}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    goto/16 :goto_0
.end method
