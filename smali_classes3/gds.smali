.class public final Lgds;
.super Lgdw;
.source "CoFolderDentryListPresenter.java"


# direct methods
.method protected constructor <init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Lgdu$b;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lgdw;-><init>(Lgdu$b;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0}, Lgds;->b()V

    .line 41
    iget-object v2, p0, Lgds;->c:Lgdu$b;

    invoke-interface {v2, v0}, Lgdu$b;->b(Z)V

    .line 43
    iget-object v2, p0, Lgds;->i:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->isAclEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_conf_space_acl_permission_setting_enable"

    .line 1083
    invoke-virtual {v2, v3, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 45
    invoke-static {}, Lgqd;->a()Lgqd;

    .line 46
    iget-object v2, p0, Lgds;->c:Lgdu$b;

    iget-object v3, p0, Lgds;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "modifyAllFile"

    invoke-static {v3, v4}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lgdu$b;->a(Z)V

    .line 47
    iget-object v2, p0, Lgds;->c:Lgdu$b;

    iget v3, p0, Lgds;->q:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lgds;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 48
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "addFile"

    invoke-static {v3, v4}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    :goto_0
    invoke-interface {v2, v0}, Lgdu$b;->l(Z)V

    .line 63
    :goto_1
    iget-object v0, p0, Lgds;->c:Lgdu$b;

    iget v2, p0, Lgds;->q:I

    invoke-interface {v0, v2}, Lgdu$b;->a(I)V

    .line 64
    iget-object v0, p0, Lgds;->c:Lgdu$b;

    invoke-interface {v0}, Lgdu$b;->f()V

    .line 66
    iget-object v0, p0, Lgds;->c:Lgdu$b;

    invoke-interface {v0, v1}, Lgdu$b;->m(Z)V

    .line 67
    return-void

    :cond_0
    move v0, v1

    .line 48
    goto :goto_0

    .line 50
    :cond_1
    iget-boolean v2, p0, Lgds;->o:Z

    if-eqz v2, :cond_2

    .line 51
    iget-object v2, p0, Lgds;->c:Lgdu$b;

    invoke-interface {v2, v0}, Lgdu$b;->a(Z)V

    .line 52
    iget-object v2, p0, Lgds;->c:Lgdu$b;

    invoke-interface {v2, v0}, Lgdu$b;->l(Z)V

    goto :goto_1

    .line 54
    :cond_2
    iget-object v2, p0, Lgds;->i:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getCoFolderRole()I

    move-result v2

    const/16 v3, 0x67

    if-ne v2, v3, :cond_3

    .line 55
    iget-object v2, p0, Lgds;->c:Lgdu$b;

    invoke-interface {v2, v1}, Lgdu$b;->a(Z)V

    .line 56
    iget-object v2, p0, Lgds;->c:Lgdu$b;

    invoke-interface {v2, v0}, Lgdu$b;->l(Z)V

    goto :goto_1

    .line 59
    :cond_3
    iget-object v0, p0, Lgds;->c:Lgdu$b;

    invoke-interface {v0, v1}, Lgdu$b;->a(Z)V

    .line 60
    iget-object v0, p0, Lgds;->c:Lgdu$b;

    invoke-interface {v0, v1}, Lgdu$b;->l(Z)V

    goto :goto_1
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 71
    iget-object v0, p0, Lgds;->c:Lgdu$b;

    iget-object v1, p0, Lgds;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgdu$b;->a(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lgds;->c:Lgdu$b;

    invoke-interface {v0, v4}, Lgdu$b;->e(Z)V

    .line 75
    iget-object v0, p0, Lgds;->c:Lgdu$b;

    iget-boolean v1, p0, Lgds;->o:Z

    sget v2, Lfzs$h;->and_setting_rights:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgdu$b;->a(ZLjava/lang/String;)V

    .line 76
    iget-object v0, p0, Lgds;->c:Lgdu$b;

    invoke-interface {v0, v3}, Lgdu$b;->h(Z)V

    .line 77
    iget-object v0, p0, Lgds;->c:Lgdu$b;

    invoke-interface {v0, v3}, Lgdu$b;->i(Z)V

    .line 78
    iget-object v0, p0, Lgds;->c:Lgdu$b;

    iget v1, p0, Lgds;->s:I

    invoke-interface {v0, v1}, Lgdu$b;->b(I)V

    .line 79
    iget-object v0, p0, Lgds;->c:Lgdu$b;

    invoke-interface {v0, v3}, Lgdu$b;->j(Z)V

    .line 80
    iget-object v0, p0, Lgds;->c:Lgdu$b;

    iget v1, p0, Lgds;->p:I

    invoke-interface {v0, v1}, Lgdu$b;->c(I)V

    .line 81
    iget-object v0, p0, Lgds;->c:Lgdu$b;

    invoke-interface {v0, v4}, Lgdu$b;->k(Z)V

    .line 82
    return-void
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 86
    invoke-static {}, Lglr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 89
    :cond_0
    const/16 v1, 0x23

    invoke-static {v1}, Lglz;->a(I)Lgly;

    move-result-object v0

    .line 90
    .local v0, "handler":Lgly;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lgnn;

    if-eqz v1, :cond_1

    .line 91
    check-cast v0, Lgnn;

    .end local v0    # "handler":Lgly;
    iget-object v1, p0, Lgds;->d:Landroid/content/Context;

    iget-object v2, p0, Lgds;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v3, p0, Lgds;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v4

    iget-boolean v3, p0, Lgds;->o:Z

    .line 2044
    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v5, v3}, Lgnn;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;JLcma;)V

    goto :goto_0

    .line 93
    .restart local v0    # "handler":Lgly;
    :cond_1
    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final d()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 99
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_filelist_setting_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v8

    .line 101
    .local v8, "cache":Lfzv;
    iget-object v1, p0, Lgds;->j:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lfzv;->l(Ljava/lang/String;)I

    move-result v6

    .line 102
    .local v6, "role":I
    iget-object v1, p0, Lgds;->j:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lfzv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "convId":Ljava/lang/String;
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_conf_space_acl_permission_setting_enable"

    .line 2083
    invoke-virtual {v1, v2, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    iget-object v2, p0, Lgds;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgds;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v1, :cond_1

    .line 107
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;-><init>()V

    .line 108
    .local v0, "args":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    iget v1, p0, Lgds;->k:I

    iput v1, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceType:I

    .line 109
    iget-object v1, p0, Lgds;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceId:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lgds;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryType:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lgds;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "0"

    :goto_0
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryId:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lgds;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryName:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lgds;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->contentType:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lgds;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->extension:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lgds;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1}, Lgpx;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->dentryIconResId:I

    .line 116
    iget-object v1, p0, Lgds;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->orgId:J

    .line 117
    iget-object v1, p0, Lgds;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->cid:Ljava/lang/String;

    .line 118
    iput v7, v0, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->settingMode:I

    .line 120
    iget-object v1, p0, Lgds;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)V

    .line 126
    .end local v0    # "args":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    :goto_1
    return-void

    .line 111
    .restart local v0    # "args":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    :cond_0
    iget-object v1, p0, Lgds;->m:Ljava/lang/String;

    goto :goto_0

    .line 123
    .end local v0    # "args":Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;
    :cond_1
    iget-object v1, p0, Lgds;->d:Landroid/content/Context;

    iget-object v2, p0, Lgds;->f:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->getConversationName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lgds;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 124
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v4

    const/4 v7, 0x0

    .line 123
    invoke-static/range {v1 .. v7}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_1
.end method
