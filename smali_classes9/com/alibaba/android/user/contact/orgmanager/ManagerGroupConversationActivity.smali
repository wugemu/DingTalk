.class public Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ManagerGroupConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:J

.field private b:Z

.field private c:Z

.field private d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->a:J

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->b:Z

    return p1
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    new-instance v1, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    .prologue
    .line 50
    .line 3122
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3123
    sget v1, Lezg$l;->create_org_group_confirm_ok:I

    new-instance v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$3;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->create_org_group_confirm_cancel:I

    new-instance v3, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$2;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V

    .line 3150
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->create_org_group_confirm_content:I

    .line 3155
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3157
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 50
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    .prologue
    .line 50
    .line 3162
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3163
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$5;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$4;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V

    .line 3190
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->disband_org_group_confirm_content:I

    .line 3195
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3197
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 50
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    .prologue
    .line 50
    .line 3202
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.ACTION_HAS_CREATE_ALL_ORG_GROUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3203
    const-string/jumbo v1, "intent_key_has_create_all_org_group"

    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3204
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 50
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->a:J

    return-wide v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->c:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->b()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 211
    .local v0, "id":I
    sget v1, Lezg$h;->tc_dept_group:I

    if-ne v0, v1, :cond_1

    .line 2224
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_qygl&questionId=201602065790&showmenu=false&dd_share=false"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    sget v1, Lezg$h;->tc_security_settings:I

    if-ne v0, v1, :cond_0

    .line 2229
    const-string/jumbo v1, "org_management_safecenter_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 2231
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/security_center.html"

    new-instance v3, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$6;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v0, Lezg$j;->activity_manager_org_group_conversation:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->setContentView(I)V

    .line 63
    sget v0, Lezg$l;->dt_org_manage_group_chat_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->setTitle(I)V

    .line 1079
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1080
    if-nez v0, :cond_1

    .line 1081
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->finish()V

    .line 65
    :goto_0
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->a:J

    invoke-static {v4, v5}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->finish()V

    .line 76
    :cond_0
    :goto_1
    return-void

    .line 1085
    :cond_1
    const-string/jumbo v3, "org_id"

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->a:J

    .line 1086
    const-string/jumbo v3, "intent_key_has_create_all_org_group"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->b:Z

    .line 1087
    const-string/jumbo v3, "hide_mobile_switch"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->c:Z

    goto :goto_0

    .line 1091
    :cond_2
    sget v0, Lezg$h;->toggle_all_org_group:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->b:Z

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    .line 1094
    sget v0, Lezg$h;->tc_dept_group:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    sget v0, Lezg$h;->tv_dept_group_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    sget v0, Lezg$h;->tc_security_settings:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_has_create_all_org_group"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->b()V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1094
    goto :goto_2

    :cond_4
    move v0, v2

    .line 1095
    goto :goto_3

    :cond_5
    move v1, v2

    .line 1096
    goto :goto_4

    .line 74
    :cond_6
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->a:J

    .line 1242
    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 1243
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;->showLoadingDialog()V

    .line 1244
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity$7;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerGroupConversationActivity;)V

    const-class v3, Lcma;

    invoke-interface {v0, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1270
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    invoke-interface {v1, v4, v5, v2, v0}, Lezt;->a(JILcma;)V

    goto/16 :goto_1
.end method
