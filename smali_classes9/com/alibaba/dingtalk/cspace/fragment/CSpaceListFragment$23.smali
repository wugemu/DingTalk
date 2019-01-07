.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;
.super Ljava/lang/Object;
.source "CSpaceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 1060
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_filelist_setting_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1061
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    .line 1062
    .local v0, "cache":Lfzv;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfzv;->l(Ljava/lang/String;)I

    move-result v6

    .line 1063
    .local v6, "role":I
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfzv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1065
    .local v3, "convId":Ljava/lang/String;
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_conf_space_acl_permission_setting_enable"

    .line 2083
    invoke-virtual {v1, v2, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1065
    if-eqz v1, :cond_1

    .line 1066
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->n(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1068
    new-instance v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    invoke-direct {v8}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;-><init>()V

    .line 1069
    .local v8, "permissionSettingArgs":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->i(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)I

    move-result v1

    iput v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceType:I

    .line 1070
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->l(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceId:Ljava/lang/String;

    .line 1071
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->n(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryType:Ljava/lang/String;

    .line 1072
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->m(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "0"

    :goto_0
    iput-object v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryId:Ljava/lang/String;

    .line 1073
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->n(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryName:Ljava/lang/String;

    .line 1074
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->n(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->contentType:Ljava/lang/String;

    .line 1075
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->n(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->extension:Ljava/lang/String;

    .line 1076
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->n(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-static {v1}, Lgpx;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v1

    iput v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryIconResId:I

    .line 1077
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->k(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)J

    move-result-wide v4

    iput-wide v4, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->orgId:J

    .line 1078
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->n(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->cid:Ljava/lang/String;

    .line 1079
    iput v7, v8, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->settingMode:I

    .line 1081
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v8}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)V

    .line 1087
    .end local v8    # "permissionSettingArgs":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    :goto_1
    return-void

    .line 1072
    .restart local v8    # "permissionSettingArgs":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->m(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1084
    .end local v8    # "permissionSettingArgs":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 1085
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->o(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$23;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->k(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)J

    move-result-wide v4

    const/4 v7, 0x0

    .line 1084
    invoke-static/range {v1 .. v7}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_1
.end method
