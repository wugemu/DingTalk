.class public final Lgeb;
.super Lgdw;
.source "PublicAreaDentryListPresenter.java"


# direct methods
.method protected constructor <init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Lgdu$b;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lgdw;-><init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0}, Lgeb;->b()V

    .line 42
    iget-object v2, p0, Lgeb;->c:Lgdu$b;

    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v3, p0, Lgeb;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 43
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "modifyAllFile"

    .line 42
    invoke-static {v3, v4}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lgdu$b;->a(Z)V

    .line 44
    iget-object v2, p0, Lgeb;->c:Lgdu$b;

    invoke-interface {v2, v0}, Lgdu$b;->b(Z)V

    .line 45
    iget-object v2, p0, Lgeb;->c:Lgdu$b;

    iget v3, p0, Lgeb;->q:I

    invoke-interface {v2, v3}, Lgdu$b;->a(I)V

    .line 46
    iget-object v2, p0, Lgeb;->c:Lgdu$b;

    invoke-interface {v2}, Lgdu$b;->f()V

    .line 48
    iget-object v2, p0, Lgeb;->c:Lgdu$b;

    iget v3, p0, Lgeb;->q:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Lgdu$b;->l(Z)V

    .line 49
    iget-object v0, p0, Lgeb;->c:Lgdu$b;

    invoke-interface {v0, v1}, Lgdu$b;->m(Z)V

    .line 50
    return-void

    :cond_0
    move v0, v1

    .line 48
    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    iget-object v0, p0, Lgeb;->c:Lgdu$b;

    iget-object v1, p0, Lgeb;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgdu$b;->a(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lgeb;->c:Lgdu$b;

    invoke-interface {v0, v3}, Lgdu$b;->e(Z)V

    .line 58
    iget-object v1, p0, Lgeb;->c:Lgdu$b;

    iget-boolean v0, p0, Lgeb;->o:Z

    if-eqz v0, :cond_0

    sget v0, Lfzs$h;->and_setting_rights:I

    :goto_0
    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lgdu$b;->a(ZLjava/lang/String;)V

    .line 60
    iget-object v0, p0, Lgeb;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->h(Z)V

    .line 61
    iget-object v0, p0, Lgeb;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->i(Z)V

    .line 62
    iget-object v0, p0, Lgeb;->c:Lgdu$b;

    iget v1, p0, Lgeb;->s:I

    invoke-interface {v0, v1}, Lgdu$b;->b(I)V

    .line 63
    iget-object v0, p0, Lgeb;->c:Lgdu$b;

    invoke-interface {v0, v2}, Lgdu$b;->j(Z)V

    .line 64
    iget-object v0, p0, Lgeb;->c:Lgdu$b;

    iget v1, p0, Lgeb;->p:I

    invoke-interface {v0, v1}, Lgdu$b;->c(I)V

    .line 65
    iget-object v0, p0, Lgeb;->c:Lgdu$b;

    invoke-interface {v0, v3}, Lgdu$b;->k(Z)V

    .line 66
    return-void

    .line 58
    :cond_0
    sget v0, Lfzs$h;->dt_external_contact_view_permission:I

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 70
    invoke-static {}, Lglr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 73
    :cond_0
    const/16 v1, 0x23

    invoke-static {v1}, Lglz;->a(I)Lgly;

    move-result-object v0

    .line 74
    .local v0, "handler":Lgly;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lgnn;

    if-eqz v1, :cond_1

    .line 75
    check-cast v0, Lgnn;

    .end local v0    # "handler":Lgly;
    iget-object v1, p0, Lgeb;->d:Landroid/content/Context;

    iget-object v2, p0, Lgeb;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v3, p0, Lgeb;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v4

    iget-boolean v3, p0, Lgeb;->o:Z

    .line 1044
    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v5, v3}, Lgnn;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;JLcma;)V

    goto :goto_0

    .line 77
    .restart local v0    # "handler":Lgly;
    :cond_1
    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "cspace_folder_right_setting"

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v2, "f_conf_space_acl_permission_setting_enable"

    .line 1083
    invoke-virtual {v0, v2, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v0

    iget-object v2, p0, Lgeb;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    new-instance v6, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    invoke-direct {v6}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;-><init>()V

    .line 89
    .local v6, "args":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    iget v0, p0, Lgeb;->k:I

    iput v0, v6, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceType:I

    .line 90
    iget-object v0, p0, Lgeb;->j:Ljava/lang/String;

    iput-object v0, v6, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceId:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lgeb;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryType:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lgeb;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "0"

    :goto_0
    iput-object v0, v6, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryId:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lgeb;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryName:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lgeb;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->contentType:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lgeb;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->extension:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lgeb;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0}, Lgpx;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v0

    iput v0, v6, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryIconResId:I

    .line 97
    iget-object v0, p0, Lgeb;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->orgId:J

    .line 98
    iget-object v0, p0, Lgeb;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->cid:Ljava/lang/String;

    .line 99
    iget-boolean v0, p0, Lgeb;->o:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, v6, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->settingMode:I

    .line 101
    iget-object v0, p0, Lgeb;->d:Landroid/content/Context;

    invoke-static {v0, v6}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)V

    .line 106
    .end local v6    # "args":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    :goto_2
    return-void

    .line 92
    .restart local v6    # "args":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    :cond_0
    iget-object v0, p0, Lgeb;->m:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 104
    .end local v6    # "args":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    :cond_2
    iget-object v0, p0, Lgeb;->d:Landroid/content/Context;

    iget-object v1, p0, Lgeb;->j:Ljava/lang/String;

    iget-object v2, p0, Lgeb;->m:Ljava/lang/String;

    iget-object v3, p0, Lgeb;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgeb;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2
.end method

.method public final p()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 110
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v1, p0, Lgeb;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "addFile"

    invoke-static {v1, v2}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lgeb;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lfzs$h;->dt_space_no_permission_upload_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 113
    sget v1, Lfzs$h;->dt_common_i_know:I

    new-instance v2, Lgeb$1;

    invoke-direct {v2, p0, v0}, Lgeb$1;-><init>(Lgeb;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 124
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-super {p0}, Lgdw;->p()V

    goto :goto_0
.end method
