.class public Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailNewOrganizationImportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/Button;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->f:Z

    .line 39
    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;Laak;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;
    .param p1, "x1"    # Laak;

    .prologue
    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 31
    .line 4139
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->g:Z

    .line 4141
    iget-object v0, p1, Laak;->b:Ljava/lang/Long;

    .line 5044
    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 4142
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 4143
    iput-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->c:J

    .line 4145
    :cond_0
    iget-object v0, p1, Laak;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4146
    iget-object v0, p1, Laak;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->d:Ljava/lang/String;

    .line 4149
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->c:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4150
    :cond_2
    const-string/jumbo v0, "org info is empty"

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 4152
    :cond_3
    iget-object v2, p1, Laak;->d:Ljava/lang/String;

    .line 5131
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5133
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "bind success goto "

    aput-object v1, v0, v4

    aput-object v2, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->b(Ljava/lang/String;)I

    .line 5135
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 5131
    :cond_4
    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/dl-yg?wh_ttid=phone&admin=1"

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    .line 5158
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->dismissLoadingDialog()V

    .line 5160
    const-string/jumbo v0, "oneKeyBind"

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5162
    sget-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORG_DEPT_EXIST:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5163
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 5164
    sget v1, Laxo$i;->dt_mail_org_struct_exist_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 5165
    sget v1, Laxo$i;->dt_mail_org_struct_exist_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 6230
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 5167
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 6275
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 5170
    sget v1, Laxo$b;->mail_bind_warning_choose:I

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 5177
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 5195
    :goto_0
    return-void

    .line 5178
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->DOMAIN_USED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5179
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 5180
    sget v1, Laxo$i;->dt_mail_bind_warning_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 5181
    sget v1, Laxo$i;->dt_mail_bind_domain_used_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 8230
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 5183
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 8275
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 5186
    sget v1, Laxo$b;->mail_bind_warning_choose:I

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 5193
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    goto :goto_0

    .line 5194
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORG_NAME_EXIST:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5195
    sget v0, Laxo$i;->dt_mail_org_name_exist_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 5197
    :cond_2
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onAttachedToWindow()V

    .line 86
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->f:Z

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->a:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 111
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->f:Z

    if-eqz v0, :cond_2

    .line 2120
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2301
    const-string/jumbo v0, "mail_bind_domain_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 2204
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "doBindOrgWithName:"

    aput-object v2, v0, v3

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->b(Ljava/lang/String;)I

    .line 2206
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->showLoadingDialog()V

    .line 2208
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 2210
    new-instance v2, Laam;

    invoke-direct {v2}, Laam;-><init>()V

    .line 2211
    iput-object v1, v2, Laam;->b:Ljava/lang/String;

    .line 2212
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->e:Ljava/lang/String;

    iput-object v1, v2, Laam;->a:Ljava/lang/String;

    .line 2214
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;)V

    invoke-interface {v0, v2, v1}, Lcom/alibaba/alimei/idl/service/CMailIService;->oneKeyBindWithOrgName(Laam;Liyv;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 2125
    :cond_1
    sget v0, Laxo$i;->dt_mail_input_org_name_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 3238
    :cond_2
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "doBindOrgWithID:"

    aput-object v1, v0, v3

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyx;->b(Ljava/lang/String;)I

    .line 3240
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3301
    const-string/jumbo v0, "mail_bind_domain_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 3243
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->showLoadingDialog()V

    .line 3245
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 3247
    new-instance v1, Laal;

    invoke-direct {v1}, Laal;-><init>()V

    .line 3248
    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Laal;->b:Ljava/lang/Long;

    .line 3249
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->e:Ljava/lang/String;

    iput-object v2, v1, Laal;->a:Ljava/lang/String;

    .line 3251
    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/idl/service/CMailIService;->oneKeyBindWithOrgId(Laal;Liyv;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v1, Laxo$g;->activity_cmail_new_organization_import:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->finish()V

    .line 80
    :goto_0
    return-void

    .line 54
    :cond_0
    sget v1, Laxo$f;->org_name_textfield:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->a:Landroid/widget/EditText;

    .line 55
    sget v1, Laxo$f;->bindBtn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->b:Landroid/widget/Button;

    .line 56
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->b:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 58
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->a:Landroid/widget/EditText;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 67
    const-string/jumbo v1, "mail_bind_org_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->d:Ljava/lang/String;

    .line 68
    const-string/jumbo v1, "mail_bind_org_id"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->c:J

    .line 69
    const-string/jumbo v1, "mail_qr_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->e:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->c:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 74
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 79
    :goto_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->b:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 76
    :cond_2
    iput-boolean v5, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->f:Z

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 94
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 96
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->g:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->finish()V

    .line 100
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->c:J

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method
