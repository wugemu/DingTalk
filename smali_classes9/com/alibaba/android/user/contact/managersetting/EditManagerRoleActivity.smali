.class public Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "EditManagerRoleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lfhn$b;


# instance fields
.field private a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

.field private b:Z

.field private c:Lfhn$a;

.field private d:J

.field private e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

.field private f:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

.field private g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

.field private h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->b:Z

    .line 70
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;)Lfhn$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->c:Lfhn$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    .line 7356
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    if-eqz v0, :cond_1

    .line 7360
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    invoke-static {v0, p1}, Lfxd;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->k:Z

    .line 7362
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iput-object p1, v0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    .line 7363
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-static {p0, v1}, Lfhu;->a(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setContent(Ljava/lang/String;)V

    .line 48
    :cond_1
    return-void

    .line 7360
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;)Lcom/alibaba/android/user/model/OrgManagerRoleObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    .line 7380
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    if-nez v0, :cond_1

    .line 7381
    :cond_0
    :goto_0
    return-void

    .line 7384
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    invoke-static {v0, p1}, Lfxd;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->k:Z

    .line 7386
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iput-object p1, v0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    .line 7387
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-static {p0, v1}, Lfhu;->c(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 7384
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->d:J

    return-wide v0
.end method

.method private h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 162
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->dt_submanager_setting_pop_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$2;-><init>(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;)V

    .line 164
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$1;-><init>(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;)V

    .line 169
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 177
    return-void
.end method

.method private i()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 483
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 485
    .local v0, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    const/4 v1, 0x0

    .line 486
    .local v1, "selectedDepts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 487
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    .line 6173
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6174
    :cond_0
    const/4 v1, 0x0

    .line 489
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 490
    check-cast v1, Ljava/util/ArrayList;

    .end local v1    # "selectedDepts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 493
    :cond_2
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    sget v3, Lezg$l;->select_org_dept:I

    .line 494
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    const/4 v3, 0x0

    .line 495
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    const/16 v3, 0xc8

    .line 496
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->d:J

    .line 497
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    const-string/jumbo v3, "CHOOSE_DEPT"

    .line 498
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 500
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    .line 7053
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 500
    invoke-virtual {v2, p0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 501
    return-void

    .line 6176
    .restart local v1    # "selectedDepts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "selectedDepts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6178
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;

    .line 6179
    if-eqz v2, :cond_4

    .line 6182
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 6183
    iget-wide v6, v2, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->orgId:J

    iput-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    .line 6184
    iget-wide v6, v2, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->deptId:J

    iput-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 6185
    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgDeptSimpleObject;->deptName:Ljava/lang/String;

    iput-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 6186
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->dismissLoadingDialog()V

    .line 290
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->showLoadingDialog()V

    .line 285
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 196
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->finish()V

    .line 280
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 256
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 257
    const/16 v5, 0x3e8

    if-ne p1, v5, :cond_6

    if-ne p2, v6, :cond_6

    .line 258
    const-string/jumbo v2, "intent_key_choosen_type"

    invoke-static {p3, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 4334
    .local v0, "managerRoleScope":I
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    if-eqz v2, :cond_2

    .line 4337
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    if-nez v2, :cond_0

    .line 4338
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    new-instance v5, Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    invoke-direct {v5}, Lcom/alibaba/android/user/model/OrgManagerScopeObject;-><init>()V

    iput-object v5, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    .line 4341
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->k:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget v2, v2, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    if-eq v2, v0, :cond_4

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->k:Z

    .line 4343
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iput v0, v2, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    .line 4344
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->f:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-static {p0, v4}, Lfhu;->b(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setContent(Ljava/lang/String;)V

    .line 4346
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget v2, v2, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    if-eq v2, v7, :cond_5

    .line 4347
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setVisibility(I)V

    .line 4352
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-static {p0, v3}, Lfhu;->d(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setContent(Ljava/lang/String;)V

    .line 261
    :cond_2
    if-ne v0, v7, :cond_3

    .line 262
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->i()V

    .line 274
    .end local v0    # "managerRoleScope":I
    :cond_3
    :goto_2
    return-void

    .restart local v0    # "managerRoleScope":I
    :cond_4
    move v2, v3

    .line 4341
    goto :goto_0

    .line 4349
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setVisibility(I)V

    .line 4350
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-static {p0, v3}, Lfhu;->c(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setContent(Ljava/lang/String;)V

    goto :goto_1

    .line 266
    .end local v0    # "managerRoleScope":I
    :cond_6
    const/16 v5, 0x3e9

    if-ne p1, v5, :cond_3

    if-ne p2, v6, :cond_3

    .line 267
    const-string/jumbo v5, "intent_key_grant_resource"

    invoke-static {p3, v5}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 268
    .local v1, "result":Ljava/io/Serializable;
    iput-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->j:Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    .line 269
    if-eqz v1, :cond_7

    .line 270
    check-cast v1, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    .end local v1    # "result":Ljava/io/Serializable;
    iput-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->j:Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    .line 272
    :cond_7
    iget-object v6, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->j:Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    .line 4424
    if-nez v6, :cond_a

    .line 5368
    :goto_3
    iget-object v5, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    if-eqz v5, :cond_3

    .line 5372
    iget-boolean v5, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->k:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v5, v5, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    invoke-static {v5, v2}, Lfxd;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    move v3, v4

    :cond_9
    iput-boolean v3, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->k:Z

    .line 5374
    iget-object v3, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iput-object v2, v3, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    .line 5375
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-static {p0, v3}, Lfhu;->d(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setContent(Ljava/lang/String;)V

    goto :goto_2

    .line 4427
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4428
    iget-object v2, v6, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->superResource:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    if-eqz v2, :cond_c

    iget-object v2, v6, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->superResource:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    iget-boolean v2, v2, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    if-eqz v2, :cond_c

    .line 4429
    iget-object v2, v6, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->superResource:Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object v2, v5

    .line 4449
    goto :goto_3

    .line 4432
    :cond_c
    iget-object v2, v6, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->sysResources:Ljava/util/List;

    if-eqz v2, :cond_e

    iget-object v2, v6, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->sysResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 4433
    iget-object v2, v6, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->sysResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    .line 4434
    if-eqz v2, :cond_d

    iget-boolean v8, v2, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    if-eqz v8, :cond_d

    .line 4437
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4441
    :cond_e
    iget-object v2, v6, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->appResources:Ljava/util/List;

    if-eqz v2, :cond_b

    iget-object v2, v6, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->appResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 4442
    iget-object v2, v6, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;->appResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/model/OrgManagerResourceObject;

    .line 4443
    if-eqz v2, :cond_f

    iget-boolean v7, v2, Lcom/alibaba/android/user/model/OrgManagerResourceObject;->isGrant:Z

    if-eqz v7, :cond_f

    .line 4446
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->k:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->h()V

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 202
    .local v0, "id":I
    sget v1, Lezg$h;->cell_members:I

    if-ne v0, v1, :cond_5

    .line 1453
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 1456
    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    .line 2152
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1457
    :cond_0
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 1458
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 1461
    :cond_1
    invoke-virtual {v3, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v1

    .line 1462
    invoke-virtual {v1, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v1

    sget v4, Lezg$l;->dt_contact_subManager_add_member:I

    .line 1463
    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v1

    const-string/jumbo v4, "CHOOSE_MEMBER"

    .line 1464
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v1

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->d:J

    .line 1465
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v1

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->d:J

    .line 1466
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v1

    .line 1467
    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v1

    .line 1468
    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v1

    .line 1469
    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v1

    const/16 v4, 0xc8

    .line 1470
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v1

    check-cast v2, Ljava/util/ArrayList;

    .line 1471
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 1474
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;-><init>()V

    .line 3053
    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 1475
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->setContactChooseRequest(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 1476
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->setMode(I)V

    .line 1478
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;)V

    .line 227
    :cond_2
    :goto_0
    return-void

    .line 2155
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2157
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;

    .line 2158
    if-eqz v1, :cond_4

    .line 2161
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 2162
    iget-wide v6, v1, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->orgId:J

    iput-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    .line 2163
    iget-wide v6, v1, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->uid:J

    iput-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 2164
    iget-object v6, v1, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->staffId:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    .line 2165
    iget-object v6, v1, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 2166
    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgEmployeeSimpleObject;->name:Ljava/lang/String;

    iput-object v1, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 2167
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    :cond_5
    sget v1, Lezg$h;->cell_scope:I

    if-ne v0, v1, :cond_7

    .line 3230
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/user/contact/managersetting/SelectRoleScopeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3231
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    if-eqz v2, :cond_6

    .line 3232
    const-string/jumbo v2, "intent_key_choosen_type"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v3, v3, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget v3, v3, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3234
    :cond_6
    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 212
    :cond_7
    sget v1, Lezg$h;->cell_depts:I

    if-ne v0, v1, :cond_8

    .line 213
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->i()V

    goto :goto_0

    .line 217
    :cond_8
    sget v1, Lezg$h;->cell_grant_resouces:I

    if-ne v0, v1, :cond_b

    .line 3504
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3505
    const-string/jumbo v2, "org_id"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->d:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3506
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->j:Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    if-eqz v2, :cond_a

    .line 3507
    const-string/jumbo v2, "intent_key_grant_resource"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->j:Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3514
    :cond_9
    :goto_2
    const/16 v2, 0x3e9

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3509
    :cond_a
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->c:Lfhn$a;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-interface {v2, v3}, Lfhn$a;->a(Lcom/alibaba/android/user/model/OrgManagerRoleObject;)[J

    move-result-object v2

    .line 3510
    if-eqz v2, :cond_9

    array-length v3, v2

    if-lez v3, :cond_9

    .line 3511
    const-string/jumbo v3, "intent_key_grant_resource_ids"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_2

    .line 222
    :cond_b
    sget v1, Lezg$h;->ll_delete_role:I

    if-ne v0, v1, :cond_2

    .line 223
    const-string/jumbo v1, "org_management_admin_subadmin_delete_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 4238
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4239
    sget v3, Lezg$l;->dt_contact_subManager_delete_group:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lezg$l;->dt_contact_subManager_delete_group_confirm:I

    .line 4240
    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lezg$l;->login_ok:I

    new-instance v4, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$3;-><init>(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;)V

    .line 4241
    invoke-virtual {v1, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lezg$l;->cancel:I

    .line 4249
    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 4250
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget v0, Lezg$j;->layout_edit_sub_manager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->setContentView(I)V

    .line 77
    new-instance v0, Lfho;

    invoke-direct {v0, p0, p0}, Lfho;-><init>(Landroid/app/Activity;Lfhn$b;)V

    .line 1085
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_sub_manager_role"

    invoke-static {v0, v1}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1086
    if-eqz v0, :cond_1

    .line 1087
    check-cast v0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    .line 1088
    iput-boolean v4, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->b:Z

    .line 1093
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->d:J

    .line 1098
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->b:Z

    if-eqz v0, :cond_2

    sget v0, Lezg$l;->dt_contact_subManager_add_subManager:I

    .line 1099
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1102
    sget v0, Lezg$h;->cell_members:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    sget v0, Lezg$h;->cell_scope:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->f:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    .line 1105
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->f:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    sget v0, Lezg$h;->cell_depts:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    .line 1107
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    sget v0, Lezg$h;->cell_grant_resouces:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    .line 1109
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    sget v0, Lezg$h;->ll_delete_role:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1111
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->b:Z

    if-eqz v1, :cond_3

    .line 1112
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-static {p0, v1}, Lfhu;->a(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setContent(Ljava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->f:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-static {p0, v1}, Lfhu;->b(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setContent(Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget v0, v0, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setVisibility(I)V

    .line 1127
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->h:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-static {p0, v1}, Lfhu;->d(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setContent(Ljava/lang/String;)V

    .line 1308
    new-instance v0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity$4;-><init>(Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->i:Landroid/content/BroadcastReceiver;

    .line 1327
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1328
    const-string/jumbo v1, "action_selected_contacts_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1329
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1330
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 81
    return-void

    .line 1090
    :cond_1
    new-instance v0, Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgManagerRoleObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    .line 1091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->b:Z

    goto/16 :goto_0

    .line 1098
    :cond_2
    sget v0, Lezg$l;->dt_contact_subManager_edit_subManager:I

    goto/16 :goto_1

    .line 1114
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1124
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->g:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-static {p0, v1}, Lfhu;->c(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgManagerRoleObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T2TextCell;->setContent(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 133
    sget v1, Lezg$l;->save:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 134
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 135
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->c:Lfhn$a;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->c:Lfhn$a;

    invoke-interface {v0}, Lfhn$a;->i()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->c:Lfhn$a;

    .line 5391
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 5392
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 304
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 305
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 142
    const-string/jumbo v2, "org_management_admin_subadmin_save_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    .line 1398
    if-nez v2, :cond_1

    move v1, v0

    .line 144
    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 158
    :goto_1
    return v0

    .line 1401
    :cond_1
    iget-object v3, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->members:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1402
    :cond_2
    sget v1, Lezg$l;->dt_contact_subManager_add_member:I

    invoke-static {v1}, Lcms;->a(I)V

    move v1, v0

    .line 1403
    goto :goto_0

    .line 1405
    :cond_3
    iget-object v3, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget v3, v3, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    if-gtz v3, :cond_5

    .line 1406
    :cond_4
    sget v1, Lezg$l;->dt_contact_subManager_add_scope:I

    invoke-static {v1}, Lcms;->a(I)V

    move v1, v0

    .line 1407
    goto :goto_0

    .line 1410
    :cond_5
    iget-object v3, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget v3, v3, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    iget-object v3, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget-object v3, v3, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->scope:Lcom/alibaba/android/user/model/OrgManagerScopeObject;

    iget-object v3, v3, Lcom/alibaba/android/user/model/OrgManagerScopeObject;->depts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1411
    :cond_6
    sget v1, Lezg$l;->dt_contact_subManager_add_depart:I

    invoke-static {v1}, Lcms;->a(I)V

    move v1, v0

    .line 1412
    goto :goto_0

    .line 1415
    :cond_7
    iget-object v3, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgManagerRoleObject;->grantResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1416
    :cond_8
    sget v1, Lezg$l;->dt_contact_subManager_add_permission:I

    invoke-static {v1}, Lcms;->a(I)V

    move v1, v0

    .line 1417
    goto :goto_0

    .line 147
    :cond_9
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->b:Z

    if-eqz v0, :cond_b

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->c:Lfhn$a;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->d:J

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-interface {v0, v2, v3, v1}, Lfhn$a;->a(JLcom/alibaba/android/user/model/OrgManagerRoleObject;)V

    .line 158
    :cond_a
    :goto_2
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1

    .line 150
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->c:Lfhn$a;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->d:J

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->a:Lcom/alibaba/android/user/model/OrgManagerRoleObject;

    invoke-interface {v0, v2, v3, v1}, Lfhn$a;->b(JLcom/alibaba/android/user/model/OrgManagerRoleObject;)V

    goto :goto_2

    .line 152
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x102002c

    if-ne v0, v2, :cond_a

    .line 153
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->k:Z

    if-eqz v0, :cond_a

    .line 154
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->h()V

    move v0, v1

    .line 155
    goto/16 :goto_1
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lfhn$a;

    .line 7190
    iput-object p1, p0, Lcom/alibaba/android/user/contact/managersetting/EditManagerRoleActivity;->c:Lfhn$a;

    .line 48
    return-void
.end method
