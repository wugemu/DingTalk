.class public Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ManagerOrgSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private final b:I

.field private c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private d:J

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private k:Landroid/view/View;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

.field private o:Landroid/content/BroadcastReceiver;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ToggleButton;

.field private r:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

.field private s:Z

.field private t:I

.field private u:Lcom/alibaba/android/user/model/OrgInviteObject;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/ToggleButton;

.field private x:Landroid/widget/ToggleButton;

.field private y:Landroid/widget/ToggleButton;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 90
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->b:I

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->s:Z

    .line 213
    new-instance v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->q:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->l:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 577
    :goto_0
    return-void

    .line 536
    :cond_0
    sget v3, Lezg$l;->passcode_forget_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "hint":Ljava/lang/String;
    sget v3, Lezg$l;->and_redpackets_verify_pwd:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "title":Ljava/lang/String;
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;

    invoke-direct {v4, p0, p1, p2}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$8;-><init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;ILjava/lang/String;)V

    const-class v5, Lcma;

    invoke-interface {v3, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 576
    .local v0, "apiEventListener":Lcma;
    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v1, v3}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V
    .locals 8
    .param p1, "orgManageInfoObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x8

    .line 780
    if-eqz p1, :cond_0

    iget-boolean v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->inRemoveProcess:Z

    if-nez v2, :cond_2

    .line 781
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->g:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lfxp;->a(Landroid/view/View;I)V

    .line 782
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->h:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lfxp;->a(Landroid/view/View;I)V

    .line 783
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->i:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lfxp;->a(Landroid/view/View;I)V

    .line 784
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->f:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v2, v0}, Lfxp;->a(Landroid/view/View;I)V

    .line 799
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 784
    goto :goto_0

    .line 788
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->g:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 789
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->h:Landroid/widget/TextView;

    invoke-static {v2, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 790
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->f:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lfxp;->a(Landroid/view/View;I)V

    .line 792
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->h:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_org_manage_disband_date_tips:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->removeActionDate:J

    invoke-static {v6, v7}, Lcog;->i(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    iget-boolean v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->canForceRemove:Z

    if-eqz v2, :cond_3

    .line 795
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->i:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 797
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->i:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;ILjava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 82
    .line 4585
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->showLoadingDialogDelay(J)V

    .line 4587
    new-instance v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$9;-><init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V

    .line 4624
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 4625
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    move-object v4, p2

    move v5, p1

    invoke-interface/range {v1 .. v6}, Lezt;->a(JLjava/lang/String;ILcma;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 82
    .line 5629
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5630
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5631
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5632
    sget v1, Lezg$l;->ok:I

    new-instance v2, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$10;-><init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5638
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    return-void
.end method

.method private a(Z)V
    .locals 6
    .param p1, "getInviteInfoSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 266
    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->s:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->t:I

    if-ne v4, v1, :cond_1

    .line 267
    .local v1, "showInviteView":Z
    :goto_0
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 268
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->p:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->z:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->u:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-boolean v0, v4, Lcom/alibaba/android/user/model/OrgInviteObject;->toggle:Z

    .line 271
    .local v0, "isOpen":Z
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 272
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->w:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->u:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-boolean v5, v5, Lcom/alibaba/android/user/model/OrgInviteObject;->searchInviteSwitch:Z

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 273
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->x:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->u:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-boolean v5, v5, Lcom/alibaba/android/user/model/OrgInviteObject;->orgApplyCodeInviteSwitch:Z

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 274
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->y:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->u:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-boolean v5, v5, Lcom/alibaba/android/user/model/OrgInviteObject;->linkInviteSwitch:Z

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 275
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->v:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .end local v0    # "isOpen":Z
    :cond_0
    :goto_2
    return-void

    .end local v1    # "showInviteView":Z
    :cond_1
    move v1, v2

    .line 266
    goto :goto_0

    .restart local v0    # "isOpen":Z
    .restart local v1    # "showInviteView":Z
    :cond_2
    move v2, v3

    .line 275
    goto :goto_1

    .line 277
    .end local v0    # "isOpen":Z
    :cond_3
    if-nez v1, :cond_0

    .line 279
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->p:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->z:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->v:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->w:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 749
    new-instance v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V

    .line 774
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;>;"
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;>;"
    check-cast v0, Lcma;

    .line 775
    .restart local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;>;"
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    const/16 v4, 0x8

    invoke-interface {v1, v2, v3, v4, v0}, Lezt;->a(JILcma;)V

    .line 776
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    .line 5580
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5581
    sget v1, Lezg$l;->sure:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 82
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->x:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private c()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 802
    iget v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->e:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->e:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->e:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->m:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->y:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    return-wide v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->r:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->b()V

    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    const/4 v3, 0x1

    .line 82
    .line 3645
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3646
    sget v0, Lezg$l;->server_down:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 3647
    :goto_0
    return-void

    .line 3649
    :cond_0
    const-string/jumbo v1, ""

    sget v0, Lezg$l;->processing:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    .line 3650
    new-instance v1, Lfpj;

    invoke-direct {v1}, Lfpj;-><init>()V

    .line 3651
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lfpj;->a:Ljava/lang/Long;

    .line 3652
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$11;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$11;-><init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V

    const-class v0, Lcma;

    invoke-static {v3, v0, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v2, v1, v0}, Lezt;->a(Lfpj;Lcma;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;

    .prologue
    .line 82
    .line 5687
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 5688
    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 5689
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 5690
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 5691
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5696
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 82
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/model/OrgInviteObject;Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;)V
    .locals 1
    .param p1, "info"    # Lcom/alibaba/android/user/model/OrgInviteObject;
    .param p2, "from"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    .prologue
    .line 289
    if-eqz p1, :cond_0

    .line 290
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->u:Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 291
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a(Z)V

    .line 293
    :cond_0
    sget-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->REMOTE:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    if-ne p2, v0, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->dismissLoadingDialog()V

    .line 296
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 300
    const-string/jumbo v0, "408"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    sget v0, Lezg$l;->server_down:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 306
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a(Z)V

    .line 307
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->dismissLoadingDialog()V

    .line 308
    return-void

    .line 303
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 402
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 403
    if-eqz p3, :cond_0

    .line 404
    const-string/jumbo v2, "code"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 405
    .local v0, "code":I
    const-string/jumbo v2, "reason"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "reason":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a(ILjava/lang/String;)V

    .line 409
    .end local v0    # "code":I
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 250
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onAttachedToWindow()V

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->r:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(J)V

    .line 254
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->tv_dissolution_team:I

    if-ne v1, v2, :cond_1

    .line 414
    const-string/jumbo v1, "org_management_more_dismiss_ok_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 415
    const-string/jumbo v1, "org_manage_dismiss"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 416
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-static {p0, v2, v3, v6}, Lflz;->a(Landroid/app/Activity;JI)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->tv_disband_cancel:I

    if-ne v1, v2, :cond_2

    .line 420
    const-string/jumbo v1, "org_manage_dismiss_cancel"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 2474
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->showLoadingDialogDelay(J)V

    .line 2476
    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V

    .line 2508
    const-class v2, Lcma;

    invoke-static {v1, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 2509
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-interface {v2, v4, v5, v1}, Lezt;->i(JLcma;)V

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->tv_disband_force:I

    if-ne v1, v2, :cond_3

    .line 425
    const-string/jumbo v1, "org_manage_dismiss_immediately"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 2513
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2514
    sget v2, Lezg$l;->dt_org_manage_force_disband_tips_title:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2515
    sget v2, Lezg$l;->dt_org_manage_force_disband_tips_verbose_desc:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->l:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->memberCount:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2516
    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$6;-><init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2522
    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$7;-><init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2528
    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 428
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->siv_org_name:I

    if-ne v1, v2, :cond_6

    .line 429
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 430
    sget v1, Lezg$l;->dt_org_manage_change_name_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 3314
    :cond_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lezg$j;->user_dialog_edit:I

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3315
    sget v1, Lezg$h;->dialog_edittext:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3316
    sget v2, Lezg$l;->add_org_hint:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 3317
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 3318
    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxEms(I)V

    .line 3319
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3320
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3322
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v2, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3330
    :cond_5
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3331
    sget v4, Lezg$l;->setting_team_name:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3332
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3333
    sget v3, Lezg$l;->cancel:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3334
    sget v3, Lezg$l;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3394
    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3395
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 3323
    :catch_0
    move-exception v2

    .line 3324
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 3325
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v4, v5, :cond_5

    .line 3326
    throw v2

    .line 434
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->tc_data_export:I

    if-ne v1, v2, :cond_7

    .line 435
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_qygl&questionId=201602065856&showmenu=false&dd_share=false"

    invoke-virtual {v1, p0, v2, v7}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 436
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->siv_org_setting_service:I

    if-ne v1, v2, :cond_8

    .line 437
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "https://h5.dingtalk.com/service-code/index.html?orgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v7}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->tc_office_address:I

    if-ne v1, v2, :cond_9

    .line 439
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "corpId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://h5.dingtalk.com/invoice/index.html?corpId=%s&dd_wx_tpl=https://h5.dingtalk.com/invoice/weex-orgaddress-bundle.js#/orgAddress/"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v8

    .line 442
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-virtual {v1, p0, v2, v7}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 444
    .end local v0    # "corpId":Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->tc_invoice_info:I

    if-ne v1, v2, :cond_b

    .line 446
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "org_invoice_setting_new_url"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 447
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 448
    .restart local v0    # "corpId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://invoice.dingtalk.com/app/index?corpId=%s#/corp-title"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v8

    .line 450
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-virtual {v1, p0, v2, v7}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    .end local v0    # "corpId":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 454
    .restart local v0    # "corpId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://h5.dingtalk.com/invoice/index.html?corpId=%s&dd_wx_tpl=https://h5.dingtalk.com/invoice/weex-home-bundle.js#/invoice/"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v8

    .line 456
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 455
    invoke-virtual {v1, p0, v2, v7}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    .end local v0    # "corpId":Ljava/lang/String;
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->org_industry:I

    if-ne v1, v2, :cond_c

    .line 462
    const-string/jumbo v1, "org_management_more_industry_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "https://h5.dingtalk.com/select-industry/index.html?corpId="

    aput-object v3, v2, v8

    .line 465
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 464
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 463
    invoke-virtual {v1, p0, v2, v7}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->tc_org_contact_info:I

    if-ne v1, v2, :cond_0

    .line 468
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    const-string/jumbo v2, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_qygl&questionId=201602065653&showmenu=false&dd_share=false"

    invoke-virtual {v1, p0, v2, v7}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 125
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    sget v0, Lezg$j;->activity_manager_org_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->setContentView(I)V

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "display_enterprise_oid"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "key_org_auth_level"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->e:I

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "bread_node_name"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->l:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_key_verify_status"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->m:I

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_key_org_manage_info"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    .line 133
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1144
    sget v0, Lezg$h;->siv_org_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 1145
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 1229
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->e:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->e:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v8, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    .line 1148
    :goto_0
    sget v0, Lezg$h;->tv_dissolution_team:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->f:Landroid/widget/TextView;

    .line 1149
    sget v0, Lezg$h;->tv_disband_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->g:Landroid/widget/TextView;

    .line 1150
    sget v0, Lezg$h;->tv_disband_remind_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->h:Landroid/widget/TextView;

    .line 1151
    sget v0, Lezg$h;->tv_disband_force:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->i:Landroid/widget/TextView;

    .line 1153
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1154
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1159
    :goto_1
    sget v0, Lezg$h;->siv_org_setting_service:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1165
    sget v0, Lezg$h;->tc_invoice_info:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1166
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1168
    sget v0, Lezg$h;->tc_office_address:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1169
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1171
    iget-wide v6, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-static {v6, v7}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(J)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v6, "org_invoice_setting"

    iget-wide v8, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-virtual {v0, v6, v8, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1172
    :goto_2
    if-eqz v3, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1173
    if-eqz v3, :cond_9

    move v0, v1

    :goto_4
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    sget v0, Lezg$h;->tv_invoice_info_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    sget v0, Lezg$h;->tv_org_address_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_b

    move v0, v1

    :goto_6
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    sget v0, Lezg$h;->tc_data_export:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-static {v4, v5}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(J)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1178
    sget v0, Lezg$h;->tc_data_export_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-static {v4, v5}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(J)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1180
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1181
    sget v0, Lezg$h;->tv_hotline:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1184
    :cond_1
    sget v0, Lezg$h;->org_industry:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->k:Landroid/view/View;

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->k:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1186
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->k:Landroid/view/View;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-static {v4, v5}, Lfls;->b(J)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1239
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-static {v4, v5}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(J)Z

    move-result v3

    .line 1240
    sget v0, Lezg$h;->tc_org_contact_info:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1241
    if-eqz v3, :cond_f

    move v0, v1

    :goto_a
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1243
    sget v0, Lezg$h;->tv_org_contact_info_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1244
    if-eqz v3, :cond_10

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->isExpired:Z

    if-eqz v0, :cond_11

    .line 1191
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->b()V

    .line 1197
    :goto_c
    sget v0, Lezg$h;->v_org_invite_pos1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->p:Landroid/view/View;

    .line 1198
    sget v0, Lezg$h;->tv_org_add_methods_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->z:Landroid/view/View;

    .line 1200
    sget v0, Lezg$h;->v_member_join_sub_switch:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->v:Landroid/view/View;

    .line 1201
    sget v0, Lezg$h;->tb_org_invite:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->q:Landroid/widget/ToggleButton;

    .line 1202
    sget v0, Lezg$h;->tb_option_search_team_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->w:Landroid/widget/ToggleButton;

    .line 1203
    sget v0, Lezg$h;->tb_option_org_number:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->x:Landroid/widget/ToggleButton;

    .line 1204
    sget v0, Lezg$h;->tb_option_link_and_qr:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->y:Landroid/widget/ToggleButton;

    .line 1206
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->q:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->w:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1208
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->x:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->y:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    sget v0, Lezg$l;->title_activity_settings:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->setTitle(I)V

    .line 1701
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->o:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 1702
    new-instance v0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->o:Landroid/content/BroadcastReceiver;

    .line 1742
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1743
    const-string/jumbo v1, "action_key_org_disband_status_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1744
    const-string/jumbo v1, "action_key_org_disband_reason_choose"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1745
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 139
    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->r:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 2257
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->s:Z

    .line 2258
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->d:J

    invoke-static {v0, v1}, Lfls;->a(J)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->t:I

    .line 141
    return-void

    .line 1231
    :cond_4
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->e:I

    if-ne v0, v3, :cond_5

    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    sget v4, Lezg$g;->icon_verify_org_name:I

    invoke-virtual {v0, v4, v8, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_0

    .line 1234
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    sget v4, Lezg$g;->right_arrow:I

    invoke-virtual {v0, v4, v8, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->b(ILjava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_0

    .line 1156
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    move v3, v1

    .line 1171
    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 1172
    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 1173
    goto/16 :goto_4

    :cond_a
    move v0, v2

    .line 1174
    goto/16 :goto_5

    :cond_b
    move v0, v2

    .line 1175
    goto/16 :goto_6

    :cond_c
    move v0, v2

    .line 1177
    goto/16 :goto_7

    :cond_d
    move v0, v2

    .line 1178
    goto/16 :goto_8

    :cond_e
    move v0, v2

    .line 1186
    goto/16 :goto_9

    :cond_f
    move v0, v2

    .line 1241
    goto/16 :goto_a

    :cond_10
    move v1, v2

    .line 1244
    goto/16 :goto_b

    .line 1194
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;)V

    goto/16 :goto_c
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 808
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 810
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 811
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManagerOrgSettingActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 813
    :cond_0
    return-void
.end method
