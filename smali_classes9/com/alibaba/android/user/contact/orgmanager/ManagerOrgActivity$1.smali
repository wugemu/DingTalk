.class final Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ManagerOrgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "in"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 447
    if-eqz p2, :cond_0

    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->isDestroyed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "mail_config_update_sucess"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 455
    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v8, p2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 457
    :cond_2
    const-string/jumbo v8, "com.workapp.org_employee_change"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 458
    const-string/jumbo v8, "key_org_dissolution"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 460
    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-virtual {v8}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->finish()V

    goto :goto_0

    .line 462
    :cond_3
    const-string/jumbo v8, "com.workapp.ACTION_MANAGE_ORG_UPDATE_VERIFY"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 463
    const-string/jumbo v8, "org_id"

    const-wide/16 v10, 0x0

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 464
    .local v4, "orgId":J
    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-nez v8, :cond_0

    .line 467
    const-string/jumbo v8, "key_org_manage_info"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .line 468
    .local v3, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;
    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Lfll;

    move-result-object v8

    .line 1094
    if-eqz v3, :cond_4

    .line 1097
    iget v9, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->authStatus:I

    iput v9, v8, Lfll;->d:I

    .line 1098
    iget-object v9, v8, Lfll;->e:Lflk;

    if-eqz v9, :cond_4

    .line 1099
    iget-object v9, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->authTitleText:Ljava/lang/String;

    iget-object v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->authStatusText:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lfll;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V

    .line 469
    :cond_4
    iget v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->authStatus:I

    .line 470
    .local v7, "status":I
    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 471
    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lfls;->d(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v12}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 472
    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v8}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "action_org_manager_update_reddot"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 474
    .end local v3    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;
    .end local v4    # "orgId":J
    .end local v7    # "status":I
    :cond_5
    const-string/jumbo v8, "com.workapp.ACTION_HAS_CREATE_ALL_ORG_GROUP"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 475
    const-string/jumbo v8, "intent_key_has_create_all_org_group"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 476
    .local v1, "has":Z
    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Lfll;

    move-result-object v8

    .line 1120
    iput-boolean v1, v8, Lfll;->c:Z

    .line 477
    const-string/jumbo v8, "ManagerOrgActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "setHasCreateAllOrgGroup "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 478
    .end local v1    # "has":Z
    :cond_6
    const-string/jumbo v8, "action_org_manager_update_reddot"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 479
    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->c(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)V

    goto/16 :goto_0

    .line 480
    :cond_7
    const-string/jumbo v8, "action_key_org_disband_status_change"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 481
    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Lfll;

    move-result-object v8

    .line 1137
    iget-object v6, v8, Lfll;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .line 483
    .local v6, "orgManageInfoObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;
    if-eqz v6, :cond_8

    .line 484
    iput-boolean v12, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->isExpired:Z

    .line 487
    :cond_8
    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Lfll;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lfll;->c(J)V

    goto/16 :goto_0

    .line 490
    .end local v6    # "orgManageInfoObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;
    :cond_9
    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Lfll;

    move-result-object v8

    .line 2108
    iget-boolean v2, v8, Lfll;->b:Z

    .line 491
    .local v2, "hide":Z
    const-string/jumbo v8, "hide_mobile_switch"

    invoke-virtual {p2, v8, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 492
    iget-object v8, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity$1;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;

    invoke-static {v8}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgActivity;)Lfll;

    move-result-object v8

    .line 2112
    iput-boolean v2, v8, Lfll;->b:Z

    .line 493
    const-string/jumbo v8, "ManagerOrgActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "isHideMobileSwitch "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
