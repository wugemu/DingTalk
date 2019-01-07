.class public Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "CMailSignDisclaimerActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;

    .prologue
    .line 20
    .line 3061
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    .line 3062
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "action_mail_signature_disclaimer_changed"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3063
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3064
    :goto_0
    const-string/jumbo v3, "intent_key_mail_signature_disclaimer_status"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3065
    const-string/jumbo v1, "intent_key_mail_signature_disclaimer_content"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3066
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 20
    return-void

    .line 3063
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v1, Laxo$g;->alm_cmail_fragment_mail_disclaimer:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 36
    const-string/jumbo v1, "CMailSignDisclaimerActivity"

    const-string/jumbo v2, "data error"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->finish()V

    .line 58
    :goto_0
    return-void

    .line 41
    :cond_0
    sget v1, Laxo$f;->tv_mail_sign_disclaimer_content:I

    .line 1372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 41
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->c:Landroid/widget/TextView;

    .line 42
    sget v1, Laxo$f;->sign_disclaimer_toggle:I

    .line 2372
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->d:Landroid/widget/ToggleButton;

    .line 43
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->a:Ljava/lang/String;

    .line 44
    const-string/jumbo v1, "intent_key_mail_signature_disclaimer_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->b:Z

    .line 45
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const-string/jumbo v1, "CMailSignDisclaimerActivity"

    const-string/jumbo v2, "mAccountName is empty"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->finish()V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->d:Landroid/widget/ToggleButton;

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->b:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 51
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;->d:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSignDisclaimerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
