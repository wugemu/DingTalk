.class public Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ManagerOrgWorkspaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lfli$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lfli$a;

.field private c:J

.field private d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 52
    const-string/jumbo v0, "title"

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;)Lfli$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->b:Lfli$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->c:J

    return-wide v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->dismissLoadingDialog()V

    .line 227
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "oaTitle"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->showLoadingDialog()V

    .line 222
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;
    .param p2, "logoMediaId"    # Ljava/lang/String;

    .prologue
    .line 247
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 236
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 107
    .local v0, "id":I
    sget v1, Lezg$h;->tc_oa_title_customize:I

    if-ne v0, v1, :cond_3

    .line 1126
    const-string/jumbo v1, "org_management_personalized_worktitle_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 1128
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->b:Lfli$a;

    invoke-interface {v1, p0}, Lfli$a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1200
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1201
    sget v2, Lezg$l;->dt_contact_certified_no_certified:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->dt_contact_certified_getCertified:I

    new-instance v3, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$4;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;)V

    .line 1202
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    .line 1209
    invoke-virtual {v1, v2, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 1210
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1133
    sget v2, Lezg$l;->profile_nick_hint:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1134
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->b:Lfli$a;

    invoke-interface {v2}, Lfli$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 1135
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    new-array v3, v5, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    .line 1137
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1138
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 1139
    new-instance v3, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1156
    if-eqz v2, :cond_2

    .line 1157
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1159
    :cond_2
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1160
    sget v3, Lezg$l;->dt_org_manage_customize_work_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1161
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1162
    sget v3, Lezg$l;->cancel:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1163
    sget v3, Lezg$l;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$2;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$2;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1188
    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1189
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1191
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$3;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 110
    :cond_3
    sget v1, Lezg$h;->tc_work_space_setting:I

    if-ne v0, v1, :cond_0

    .line 2117
    const-string/jumbo v1, "org_management_personalized_logo_workpage_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 2118
    const-string/jumbo v1, "https://h5.dingtalk.com/workpageSetting/index.html?corpId=%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->c:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2119
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v7}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v4, -0x1

    invoke-static {v0, v1, v4, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->c:J

    .line 61
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->c:J

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->finish()V

    .line 1096
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Lflj;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->c:J

    invoke-direct {v0, p0, p0, v4, v5}, Lflj;-><init>(Landroid/app/Activity;Lfli$b;J)V

    .line 67
    sget v0, Lezg$j;->user_activity_manager_org_workspace:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->setContentView(I)V

    .line 1072
    sget v0, Lezg$l;->dt_contact_workSpace_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->setTitle(I)V

    .line 1075
    sget v0, Lezg$h;->tc_oa_title_customize:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1077
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->b:Lfli$a;

    invoke-interface {v1}, Lfli$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 1080
    sget v0, Lezg$h;->tv_org_title_des:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1081
    const-string/jumbo v4, "https://tms.dingtalk.com/markets/dingtalk/logoshowcase?isAuth=%d&orgId=%s&type=%s"

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->b:Lfli$a;

    invoke-interface {v1}, Lfli$a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->c:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    const-string/jumbo v2, "title"

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1082
    sget v2, Lezg$l;->dt_contact_certify_clickToCertify:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1083
    sget v4, Lezg$l;->dt_org_manage_customize_work_title_footer:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1084
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1085
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1086
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->b:Lfli$a;

    invoke-interface {v5, p0, v4, v2, v1}, Lfli$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1089
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "contact_work_space_setting"

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1090
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->c:J

    invoke-static {v4, v5}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(J)Z

    move-result v1

    .line 1091
    sget v2, Lezg$h;->tc_work_space_setting:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1092
    sget v4, Lezg$h;->tv_work_space_setting_desc:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1093
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1094
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 1081
    goto :goto_1

    .line 1098
    :cond_2
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1099
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->b:Lfli$a;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->b:Lfli$a;

    invoke-interface {v0}, Lfli$a;->i()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->b:Lfli$a;

    .line 255
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 256
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lfli$a;

    .line 2216
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->b:Lfli$a;

    .line 50
    return-void
.end method
