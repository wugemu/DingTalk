.class public Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailSenderNickConfigActivity.java"


# instance fields
.field private a:Lrz;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/app/Activity;

.field private f:Lyb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 41
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->a:Lrz;

    .line 164
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->f:Lyb;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    .line 7291
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    .line 6191
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->dismissLoadingDialog()V

    .line 6192
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->f:Lyb;

    if-eqz v0, :cond_0

    .line 7085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    .line 6193
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->f:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 6196
    :cond_0
    if-eqz p1, :cond_1

    .line 6197
    sget v0, Laxo$i;->dt_mail_op_success:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 6202
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->finish()V

    .line 37
    return-void

    .line 6199
    :cond_1
    sget v0, Laxo$i;->dt_mail_op_fail:I

    invoke-static {v0}, Lhcn;->a(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    .prologue
    .line 37
    .line 5184
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->showLoadingDialog()V

    .line 5185
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->f:Lyb;

    if-eqz v0, :cond_0

    .line 6085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    .line 5186
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->f:Lyb;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    .line 7304
    if-eqz p1, :cond_0

    .line 7305
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7306
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void

    .line 7308
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->c:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;

    .prologue
    .line 37
    .line 7234
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)V

    .line 7259
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/alimei/contact/api/ContactApi;->getUserSelfContactFromServer(Lxv;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v2, Laxo$g;->alm_cmail_fragment_mail_sender_nick:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->finish()V

    .line 58
    const-string/jumbo v2, "CMailSenderNickConfigActivity"

    const-string/jumbo v3, "data error"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object p0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->e:Landroid/app/Activity;

    .line 63
    sget v2, Laxo$f;->mail_nick_edit:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->c:Landroid/widget/EditText;

    .line 64
    sget v2, Laxo$f;->account_email:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->d:Landroid/widget/TextView;

    .line 66
    const-string/jumbo v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->b:Ljava/lang/String;

    .line 67
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    const-string/jumbo v2, "CMailSenderNickConfigActivity"

    const-string/jumbo v3, "mAccountName is empty"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->finish()V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x96

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 74
    .local v1, "lengthFilters":[Landroid/text/InputFilter;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 76
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->b:Ljava/lang/String;

    invoke-static {v2}, Lafh;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1206
    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)V

    .line 1230
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/alibaba/alimei/contact/api/ContactApi;->getUserSelfContactFromLocal(Lxv;)V

    goto :goto_0

    .line 2246
    :cond_2
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 1263
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->b:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$6;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/alimei/framework/account/AccountApi;->queryAccountByName(Ljava/lang/String;Lxv;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 85
    const/4 v1, 0x1

    sget v2, Laxo$i;->dt_mail_save:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 86
    .local v0, "menuItemSendCancel":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->f:Lyb;

    if-eqz v0, :cond_0

    .line 5085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->f:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->f:Lyb;

    .line 322
    :cond_0
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 323
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 3101
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3102
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Lafh;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3140
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->a(J)V

    .line 3141
    invoke-static {}, Lxn;->h()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->b:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->setDefaultAccount(Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 4246
    :cond_0
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 4110
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;->b:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSenderNickConfigActivity;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->updateDisplayName(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
