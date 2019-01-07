.class public Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailSignConfigActivity.java"


# instance fields
.field private a:Lrz;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 28
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->a:Lrz;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v3, Laxo$g;->alm_cmail_fragment_mail_sign_config:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->finish()V

    .line 61
    :goto_0
    return-void

    .line 45
    :cond_0
    sget v3, Laxo$f;->mail_sign_edit:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->c:Landroid/widget/EditText;

    .line 46
    const-string/jumbo v3, "account_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->b:Ljava/lang/String;

    .line 47
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->finish()V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->b:Ljava/lang/String;

    invoke-static {v3}, Laca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "signature":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x1f4

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v3

    .line 56
    .local v1, "lengthFilters":[Landroid/text/InputFilter;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 58
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 60
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

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

    .line 65
    const/4 v1, 0x1

    sget v2, Laxo$i;->dt_mail_save:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 66
    .local v0, "menuItemSendCancel":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1081
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1575
    const-string/jumbo v0, "mail_account_setting_sign_save_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 1087
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Laca;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    sget v0, Laxo$i;->cspace_save_success:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 1090
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignConfigActivity;->finish()V

    goto :goto_0

    .line 1579
    :cond_0
    const-string/jumbo v0, "mail_account_setting_backup_save_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
