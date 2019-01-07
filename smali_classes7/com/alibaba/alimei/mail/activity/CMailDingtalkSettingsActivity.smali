.class public Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailDingtalkSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/MenuItem;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 108
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    .prologue
    .line 45
    .line 8210
    sget v0, Laxo$i;->dt_cmail_reseting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->a(IZ)V

    .line 8211
    invoke-static {}, Lro;->a()Lro;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)V

    invoke-virtual {v0, v1}, Lro;->a(Lcma;)V

    .line 45
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->a:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;

    .prologue
    .line 45
    .line 8327
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    .line 8328
    if-nez v0, :cond_0

    .line 8329
    sget v0, Laxo$i;->dt_cmail_network_error:I

    invoke-static {v0}, Lcms;->a(I)V

    :goto_0
    return-void

    .line 8331
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->showLoadingDialog()V

    .line 8332
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)V

    .line 8370
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 8371
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    .line 8372
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 182
    .local v0, "id":I
    sget v1, Laxo$f;->reset_btn:I

    if-ne v1, v0, :cond_0

    .line 8188
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8189
    sget v2, Laxo$i;->alm_cmail_mail_account_reset_tips:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8190
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8191
    sget v2, Laxo$i;->alm_cmail_mail_account_reset_confirm:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8200
    sget v2, Laxo$i;->cancel:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8206
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 185
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1128
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1129
    const-string/jumbo v3, "account_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->b:Ljava/lang/String;

    .line 1130
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 114
    :goto_0
    if-nez v0, :cond_1

    .line 115
    const-string/jumbo v0, "CMailDingtalkSettingsActivity"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "initArgs fail, accountName: "

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->b:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->finish()V

    .line 125
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1130
    goto :goto_0

    .line 120
    :cond_1
    sget v0, Laxo$g;->activity_cmail_dingtalk_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->setContentView(I)V

    .line 1134
    sget v0, Laxo$f;->email:I

    .line 1372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1134
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->c:Landroid/widget/TextView;

    .line 1135
    sget v0, Laxo$f;->default_sender_layout:I

    .line 2372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1135
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->d:Landroid/view/View;

    .line 1136
    sget v0, Laxo$f;->dingtalk_id_setting:I

    .line 3372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1136
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->e:Landroid/view/View;

    .line 1137
    sget v0, Laxo$f;->et_dingtalk_account:I

    .line 4372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1137
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->f:Landroid/widget/EditText;

    .line 1138
    sget v0, Laxo$f;->tv_done_result:I

    .line 5372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1138
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->g:Landroid/widget/TextView;

    .line 1139
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->g:Landroid/widget/TextView;

    sget v3, Laxo$i;->dt_cmail_dingtalk_suffix:I

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, ""

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    sget v0, Laxo$f;->reset_btn:I

    .line 6372
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1140
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->h:Landroid/view/View;

    .line 7144
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7145
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 7146
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mAllowChangeDingTalkId:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "@dingtalk.com"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->i:Z

    .line 7147
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->i:Z

    if-eqz v0, :cond_3

    .line 7148
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7149
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7157
    :goto_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->f:Landroid/widget/EditText;

    .line 7283
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)V

    .line 7158
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 7146
    goto :goto_2

    .line 7151
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->i:Z

    if-eqz v0, :cond_0

    .line 164
    sget v0, Laxo$i;->dt_mail_save:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->a:Landroid/view/MenuItem;

    .line 165
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->a:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 166
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->a:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 168
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 173
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_0

    .line 7311
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Lcpg;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7312
    sget v0, Laxo$i;->and_dingtalk_account_check:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 176
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 7314
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7315
    sget v1, Laxo$i;->and_dingtalk_account_confirm:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->j:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7316
    sget v1, Laxo$i;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7317
    sget v1, Laxo$i;->sure:I

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDingtalkSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7322
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method
