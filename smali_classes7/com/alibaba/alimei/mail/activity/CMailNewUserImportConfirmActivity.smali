.class public Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailNewUserImportConfirmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 146
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    sget v1, Laxo$i;->dt_mail_bind_warning_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 3230
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 150
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 3275
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 153
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 155
    sget v1, Laxo$b;->mail_bind_warning_choose:I

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 162
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 163
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 30
    .line 5138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->h:Z

    .line 5140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v2, p1

    .line 5142
    :goto_0
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 30
    return-void

    .line 5140
    :cond_0
    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/dl-yg?wh_ttid=phone"

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    .line 6121
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->dismissLoadingDialog()V

    .line 6123
    const-string/jumbo v0, "oneKeyEmpBindToOrg"

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6125
    sget-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->ALREADY_BIND_HAS_DIFFERENT_EMAIL:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6127
    sget v0, Laxo$i;->dt_mail_bind_email_not_match:I

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->a(I)V

    .line 6130
    :goto_0
    return-void

    .line 6128
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->EMAIL_IS_EXIST:Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/CMailRpcError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6130
    sget v0, Laxo$i;->dt_mail_bind_email_has_exist:I

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->a(I)V

    goto :goto_0

    .line 6132
    :cond_1
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 82
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->g:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->showLoadingDialog()V

    .line 2305
    const-string/jumbo v2, "mail_bind_account_click"

    invoke-static {v2}, Lafe;->a(Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "start bind account token:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyx;->b(Ljava/lang/String;)I

    .line 90
    const-class v2, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 92
    .local v1, "service":Lcom/alibaba/alimei/idl/service/CMailIService;
    new-instance v0, Laao;

    invoke-direct {v0}, Laao;-><init>()V

    .line 93
    .local v0, "param":Laao;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->d:Ljava/lang/String;

    iput-object v2, v0, Laao;->a:Ljava/lang/String;

    .line 95
    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/alimei/idl/service/CMailIService;->oneKeyEmpBindToOrg(Laao;Liyv;)V

    .line 118
    .end local v0    # "param":Laao;
    .end local v1    # "service":Lcom/alibaba/alimei/idl/service/CMailIService;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v1, Laxo$g;->activity_cmail_new_user_import_confirm:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->finish()V

    .line 69
    :goto_0
    return-void

    .line 56
    :cond_0
    sget v1, Laxo$f;->email_address_label:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->e:Landroid/widget/TextView;

    .line 57
    sget v1, Laxo$f;->org_name_label:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->f:Landroid/widget/TextView;

    .line 58
    sget v1, Laxo$f;->user_bind_btn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->g:Landroid/widget/Button;

    .line 60
    const-string/jumbo v1, "mail_bind_org_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->a:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "mail_bind_org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->b:Ljava/lang/Long;

    .line 62
    const-string/jumbo v1, "mail_bind_mail_accpunt"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->c:Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "mail_qr_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->d:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->g:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 75
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->h:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailNewUserImportConfirmActivity;->finish()V

    .line 78
    :cond_0
    return-void
.end method
